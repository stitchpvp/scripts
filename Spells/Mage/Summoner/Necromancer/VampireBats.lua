function cast(Caster, Target, MinDmg, MaxDmg, Debuff)
  SpellDamage(Target, 2, MinDmg, MaxDmg)
  AddSkillBonus(Target, GetSkillIDByName("Defense"), Debuff)
end

function tick(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 2, MinDmg, MaxDmg)
end