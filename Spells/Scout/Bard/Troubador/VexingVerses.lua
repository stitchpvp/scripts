function cast(Caster, Target, MinDmg, MaxDmg, CastSpeedDebuff, DefenseDebuff)
  SpellDamage(Target, 5, MinDmg, MaxDmg)
  AddSpellBonus(Target, 664, CastSpeedDebuff)
  AddSkillBonus(Target, GetSkillIDByName("Defense"), DefenseDebuff)
end