function cast(Caster, Target)
  AddProc(Target, 11, 100)
  AddProc(Target, 12, 100)
end

function proc(Caster, Target, ProcType)
  CastSpell(Target, 177427847, 1, Caster)
end

function remove(Caster, Target)
  RemoveProc(Target)
end
