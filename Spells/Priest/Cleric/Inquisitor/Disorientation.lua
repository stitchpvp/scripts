function cast(Caster, Target, HateAmount)
  AddControlEffect(Target, 4)
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
  RemoveControlEffect(Target, 4)
  RemoveProc(Target)
end