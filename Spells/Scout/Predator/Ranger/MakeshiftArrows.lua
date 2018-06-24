function cast(Caster, Target)
  AddProc(Caster, 3, 15)
end

function proc(Caster, Target, ProcType)
  CastSpell(Target, 240067515, 1, Caster)
end

function remove(Caster)
  RemoveProc(Caster)
end