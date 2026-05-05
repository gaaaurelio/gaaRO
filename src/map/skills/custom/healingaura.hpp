// File: src/map/skills/custom/healingaura.hpp  
#pragma once  
#include "../skill_impl.hpp"  
  
class SkillHealingAura : public SkillImpl {  
public:  
    SkillHealingAura();  
    void castendNoDamageId(block_list* src, block_list* target,  
                           uint16 skill_lv, t_tick tick, int32& flag) const override;  
};