function cast(Caster, Target, Chance)
  AddProc(Target, 20, Chance)
end

function proc(Caster, Target, ProcType)
  CastSpell(Target, 130581838, 1, Caster)
end

function remove(Caster, Target)
  RemoveProc(Target)
end
