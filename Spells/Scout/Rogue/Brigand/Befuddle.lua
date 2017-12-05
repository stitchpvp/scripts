function cast(Caster, Target)
  AddProc(Caster, 3, 10)
end

function proc(Caster, Target, ProcType, DehateAmt)
  if IsPlayer(Target) then
    SetTarget(Target, 0xFFFFFFFF)
  else
    AddHate(Caster, Target, DehateAmt)
  end
end

function remove(Caster, Target)
  RemoveProc(Caster)
end
