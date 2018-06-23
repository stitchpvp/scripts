function cast(Caster, Target)
  AddProc(Target, 2, 7)
end

function proc(Caster, Target, ProcType)
  AddStoneskin(Target, 0, 1, 0)
end

function remove(Caster, Target)
  RemoveProc(Target)
  RemoveStoneskin(Target)
end