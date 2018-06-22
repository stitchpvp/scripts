function cast(Caster, Target, Heal, CureLevel)
  SpellHeal(Target, "Heal", Heal)
  CureByType(Target, CureLevel, 1)
  CureByType(Target, CureLevel, 2)
  CureByType(Target, CureLevel, 3)
  CureByType(Target, CureLevel, 4)
end