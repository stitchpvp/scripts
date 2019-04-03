function cast(Caster, Target, Chance)
  AddProc(Target, 2, Chance)
end

function proc(Caster, Target, ProcType)
  CastSpell(Target, 100049851, 1, Caster)
end

function remove(Caster, Target)
  RemoveProc(Target)
end
