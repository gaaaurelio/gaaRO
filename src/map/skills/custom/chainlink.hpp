// Copyright (c) rAthena Dev Teams - Licensed under GNU GPL  
#pragma once  
  
#include "../skill_impl.hpp"  
  
class SkillChainLink : public SkillImpl {  
public:  
    SkillChainLink();  
    void castendNoDamageId(block_list *src, block_list *target,  
        uint16 skill_lv, t_tick tick, int32& flag) const override;  
};