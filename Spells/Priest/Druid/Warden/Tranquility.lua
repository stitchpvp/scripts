function cast(Caster, Target, Heal, Cure)
  CastSpell(Target, 68431509, 1, Caster)
  CureByType(Target, Cure, 0)
end

function tick(Caster, Target, Heal, Cure)
  CureByType(Target, Cure, 0)
end
