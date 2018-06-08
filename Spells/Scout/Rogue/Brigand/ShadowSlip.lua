function cast(Caster, Target, Dehate)
  AddHate(Caster, Target, Dehate)

  if IsPlayer(Target) then
    SetTarget(Target, 0xFFFFFFFF)
  end
end

function remove(Caster, Target)
  CastSpell(Caster, 232860311, 1)
end
