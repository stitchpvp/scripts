function cast(Caster, Target)
  AddProc(Caster, 1, 100)
end

function proc(Caster, Target, ProcType)
  CastSpell(Target, 43073979, 1, Caster)
end

function remove(Caster, Target)
  RemoveProc(Caster)
end