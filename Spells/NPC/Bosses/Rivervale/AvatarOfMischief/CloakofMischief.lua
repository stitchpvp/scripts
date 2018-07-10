function cast(Caster, Target)
  AddProc(Caster, 2, 10)
end

function proc(Caster, Target, ProcType)
  CastSpell(Target, 130129746, 1, Caster)
end

function remove(Caster, Target)
  RemoveProc(Caster)
end