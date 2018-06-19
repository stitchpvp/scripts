function cast(Caster, Target, MinDmg, MaxDmg, SpellID)
  SpellDamage(Target, 5, MinDmg, MaxDmg)
  CastSpell(Target, SpellID, 1, Caster)
end