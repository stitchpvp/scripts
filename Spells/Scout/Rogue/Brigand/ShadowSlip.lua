function cast(Caster, Target, Dehate)
  AddHate(Caster, Target, Dehate)

  CastSpell(Caster, 232860311, 1)

  if IsPlayer(Target) then
    SetTarget(Target, 0xFFFFFFFF)
  end
end
