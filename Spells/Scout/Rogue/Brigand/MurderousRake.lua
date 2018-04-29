function cast(Caster, Target, MinDmg, MaxDmg, MagicDebuff)
  SpellDamage(Target, 2, MinDmg, MaxDmg)
  AddSpellBonus(Target, 201, MagicDebuff)
  AddSpellBonus(Target, 202, MagicDebuff)
  AddSpellBonus(Target, 203, MagicDebuff)
end
