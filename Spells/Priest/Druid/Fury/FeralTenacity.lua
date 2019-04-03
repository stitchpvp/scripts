function cast(Caster, Target)
  AddProc(Target, 13, 100)
end

function proc(Caster, Target, ProcType)
  CastSpell(Target, 62772795, 1, Caster)
end

function remove(Caster, Target)
  RemoveProc(Target)
end
