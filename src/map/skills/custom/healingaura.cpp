// File: src/map/skills/custom/healingaura.cpp  
#include "healingaura.hpp"  
  
#include "map/clif.hpp"  
#include "map/map.hpp"  
#include "map/pc.hpp"  
#include "map/skill.hpp"  
#include "map/status.hpp"  
#include "map/unit.hpp"  
  
SkillHealingAura::SkillHealingAura() : SkillImpl(HEALING_AURA) {}  

static int32 healing_aura_overlap_sub(block_list* bl, va_list ap)
{
    (void)ap;

    skill_unit* unit = (skill_unit*)bl;

    if (unit == nullptr || !unit->alive || unit->group == nullptr)
        return 0;

    return unit->group->skill_id == HEALING_AURA ? 1 : 0;
}

static bool healing_aura_has_overlap(block_list* target)
{
    return map_foreachinallarea(healing_aura_overlap_sub, target->m,
                                target->x - 2, target->y - 2,
                                target->x + 2, target->y + 2,
                                BL_SKILL) > 0;
}
  
void SkillHealingAura::castendNoDamageId(  
    block_list* src, block_list* target,  
    uint16 skill_lv, t_tick tick, int32& flag) const  
{  
    map_session_data* sd  = BL_CAST(BL_PC, src);  
    map_session_data* tsd = BL_CAST(BL_PC, target);  
  
    if (tsd == nullptr)  
        return;  

    if (unit_data* ud = unit_bl2ud(src); ud != nullptr) {
        for (const std::shared_ptr<s_skill_unit_group>& sug : ud->skillunits) {
            if (sug != nullptr && sug->skill_id == getSkillId()) {
                if (sd != nullptr)
                    clif_skill_fail(*sd, getSkillId());
                return;
            }
        }
    }

    if (healing_aura_has_overlap(target)) {
        if (sd != nullptr)
            clif_skill_fail(*sd, getSkillId());
        return;
    }
  
    t_tick duration = skill_get_time(getSkillId(), skill_lv);

    if (duration <= 0)
        duration = (5 + skill_lv) * 1000;
  
    std::shared_ptr<s_skill_unit_group> sg =  
        skill_unitsetting(src, getSkillId(), skill_lv,  
                          target->x, target->y, 0);  
  
    if (sg == nullptr)  
        return;  
  
    sg->val2 = target->id;  
  
    if (!sc_start4(src, target, SC_HEALING_AURA,
                   100, skill_lv, src->id, sg->group_id, 0, duration)) {
        skill_delunitgroup(sg);
        return;
    }
  
    clif_skill_nodamage(src, *target, getSkillId(), skill_lv);  
  
    if (sd != nullptr)  
        skill_blockpc_start(*sd, getSkillId(), duration);  
}
