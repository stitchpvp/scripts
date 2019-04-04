function cast(Caster, Target)
  AddProc(Caster, 3, 100)
end

function proc(Caster, Target, ProcType, Hate)
  AddHate(Caster, Target, MinHate, 1)
end

function remove(Caster, Target)
  RemoveProc(Caster)
end
