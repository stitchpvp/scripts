function cast(Caster, Target)
  AddProc(Target, 13, 100)
end

function proc(Caster, Target, ProcType)
  CastSpell(Caster, 109830958, 1)
end

function remove(Caster, Target)
  RemoveProc(Target)
end
