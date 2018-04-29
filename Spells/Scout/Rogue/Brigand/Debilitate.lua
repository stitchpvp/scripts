function cast(Caster, Target, MinDmg, MaxDmg, MitDebuff)
  AddSpellBonus(Target, 204, MitDebuff)
  SpellDamage(Target, 2, MinDmg, MaxDmg)
end
