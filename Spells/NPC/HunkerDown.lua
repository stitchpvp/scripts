function cast(Caster, Target, Chance)
  AddProc(Caster, 1, Chance)
end

function proc(Caster, Target, ProcType)
  CastSpell(Target, 173599197, 1, Caster)
end

function remove(Caster, Target)
  RemoveProc(Caster)
end
