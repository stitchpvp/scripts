function cast(Caster, Target, DamageSpell, HealSpell)
  CastSpell(Target, DamageSpell, 1, Caster)

  if IsPet(Caster) then
    CastSpell(Caster, HealSpell, 1, GetOwner(Caster))
  else
    CastSpell(Caster, HealSpell, 1, Caster)
  end
end