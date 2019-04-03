function cast(Caster, Target, MinDmg, MaxDmg, Debuff)
  SpellDamage(Target, 4, MinDmg, MaxDmg)
  AddSkillBonus(Target, GetSkillIDByName("Crushing"), Debuff)
  AddSkillBonus(Target, GetSkillIDByName("Slashing"), Debuff)
  AddSkillBonus(Target, GetSkillIDByName("Piercing"), Debuff)
end

function remove(Caster, Target)
  RemoveSkillBonus(Target)
end
