function cast(Caster, Target)
  AddControlEffect(Target, 6)
  AddProc(Target, 2, 30)

  if IsPlayer(Target) then
    SetTarget(Target, 0xFFFFFFFF)
  end
end

function proc(Caster, Target)
  CancelSpell()
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 6)
  RemoveProc(Target, 2)
end
