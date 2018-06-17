function cast(Caster, Target, Dehate)
  AddHate(Caster, Target, Dehate)
  CastSpell(Caster, 2903996, 1)

  if IsPlayer(Target) then
    SetTarget(Target, 0xFFFFFFFF)
  end
end
