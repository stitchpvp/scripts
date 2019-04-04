function cast(Caster, Target, MinDmg, MaxDmg, Debuff)
  SpellDamage(Target, 0, MinDmg, MaxDmg)
  AddSkillBonus(Target, GetSkillIDByName("Defense"), Debuff)
  AddSkillBonus(Target, GetSkillIDByName("Parry"), Debuff)
  AddSkillBonus(Target, GetSkillIDByName("Deflection"), Debuff)
end

function remove(Caster, Target)
  RemoveSkillBonus(Target)
end
