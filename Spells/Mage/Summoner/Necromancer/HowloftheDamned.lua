function precast (Caster, Target)
  local Pet = GetPet(Caster)

  if Pet ~= nil
    return true
  else
    return false
  end
end

function cast(Caster, Target, atkSpeed, defPenalty, focusBonus, procDmg, procHeal, castSkills)
    AddSpellBonus(Target, 613, atkSpeed)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), defPenalty)
    AddSkillBonus(Target, GetSkillIDByName("Parry"), defPenalty)
    AddSkillBonus(Target, GetSkillIDByName("Focus"), focusBonus)
    AddSkillBonus(Target, GetSkillIDByName("Subjugation"), castSkills)
    AddSkillBonus(Target, GetSkillIDByName("Disruption"), castSkills)
end

function proc(Caster, Target, Type, atkSpeed, defPenalty, focusBonus, procDmg, procHeal, castSkills)
    ProcDamage(Caster, Target, "Clawing of the Soul", 8, procDmg)
    SpellHeal("Heal", procHeal)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end