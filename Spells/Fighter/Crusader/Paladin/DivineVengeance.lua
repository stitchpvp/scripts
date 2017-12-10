function cast(Caster, Target, MinDmg, MaxDmg, SpellID)
  SpellDamage(Target, 7, MinDmg, MaxDmg)
  CastSpell(Target, SpellID, 1, Caster)
end