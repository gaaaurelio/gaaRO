// Copyright (c) rAthena Dev Teams - Licensed under GNU GPL  
#include "chainlink.hpp"  
  
#include "map/battle.hpp"  
#include "map/clif.hpp"  
#include "map/map.hpp"  
#include "map/skill.hpp"  
#include "map/status.hpp"  
  
// Helper: collect nearby enemies for the chain  
struct s_chainlink_data {  
    block_list *primary;  
    int32 group_id;  
    int32 skill_lv;  
    int32 count;  
    int32 max_count;  
};  
  
static int32 chainlink_spread_sub(block_list *bl, va_list ap) {  
    s_chainlink_data *data = va_arg(ap, s_chainlink_data*);  
  
    if (bl == data->primary)  
        return 0; // primary already linked  
    if (status_isdead(*bl))  
        return 0;  
    if (data->count >= data->max_count)  
        return 0;  
  
    // Apply SC_CHAINLINK: val1=primary id, val2=group_id, val3=skill_lv  
    if (status_change_start(data->primary, bl, SC_CHAINLINK, 10000,  
            data->primary->id, data->group_id, data->skill_lv, 0,  
            skill_get_time(CUSTOM_CHAINLINK, data->skill_lv),  
            SCSTART_NOAVOID)) {  
        data->count++;  
    }  
    return 1;  
}  
  
SkillChainLink::SkillChainLink() : SkillImpl(CUSTOM_CHAINLINK) {}  
  
void SkillChainLink::castendNoDamageId(block_list *src, block_list *target,  
        uint16 skill_lv, t_tick tick, int32& flag) const  
{  
    if (target->type != BL_MOB) {  
        // Only works on monsters  
        if (map_session_data *sd = BL_CAST(BL_PC, src))  
            clif_skill_fail(*sd, getSkillId());  
        return;  
    }  
  
    // Remove existing chain on this target if recasting  
    status_change *tsc = status_get_sc(target);  
    if (tsc && tsc->getSCE(SC_CHAINLINK))  
        status_change_end(target, SC_CHAINLINK);  
  
    // Unique group ID: use src->id XOR lower bits of tick  
    int32 group_id = (src->id ^ (int32)(tick & 0xFFFF));  
  
    // Apply to primary target: val1=self (primary), val2=group_id, val3=skill_lv  
    status_change_start(src, target, SC_CHAINLINK, 10000,  
        target->id, group_id, skill_lv, 0,  
        skill_get_time(CUSTOM_CHAINLINK, skill_lv),  
        SCSTART_NOAVOID);  
  
    // Spread to nearby enemies (3x3 = range 1)  
    // max linked = skill_lv + 1 (secondary targets only)  
    s_chainlink_data data;  
    data.primary   = target;  
    data.group_id  = group_id;  
    data.skill_lv  = skill_lv;  
    data.count     = 0;  
    data.max_count = skill_lv + 1; // lv1=2 total, lv5=6 total  
  
    map_foreachinrange(chainlink_spread_sub, target, 1, BL_MOB, &data);  
  
    clif_skill_nodamage(src, *target, getSkillId(), skill_lv);  
}