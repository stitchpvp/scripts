function cast(Caster, Target, MinDmg, MaxDmg, WisDebuff)
  AddSpellBonus(Target, 3, WisDebuff)

  SpellDamage(Target, 8, MinDmg, MaxDmg)
end
