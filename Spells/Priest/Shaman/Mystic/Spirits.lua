function cast(Caster, Target, HatePosition, HateAmount)
  AddControlEffect(Target, 1)
  AddProc(Target, 2, 100)

  if IsPlayer(Target) then
    SetTarget(Target, 0xFFFFFFFF)
  else
    AddHate(Caster, Target, HateAmount)
  end
end

function proc()
  CancelSpell()
end

function remove(Caster, Target)
  RemoveProc(Target)
end