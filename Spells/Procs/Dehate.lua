function cast(Caster, Target, Dehate)
  if IsPlayer(Target) then
    SetTarget(Target, 0xFFFFFFFF)
  else
    AddHate(Caster, Target, Dehate)
  end
end
