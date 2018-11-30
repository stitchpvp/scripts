function cast(Caster, Target, ArcaneDebuff, CastSpeedDebuff, DefenseDebuff)
  AddSpellBonus(Target, 203, ArcaneDebuff)
  AddSpellBonus(Target, 664, CastSpeedDebuff)
  AddSkillBonus(Target, GetSkillIDByName("Defense"), DefenseDebuff)
end
