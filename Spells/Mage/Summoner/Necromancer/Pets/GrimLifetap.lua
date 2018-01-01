function cast(Caster, Target, DamageSpell, HealSpell)
  CastSpell(Target, DamageSpell, 1, Caster)
  CastSpell(Caster, HealSpell, 1)
end