function cast(Caster, Target)
  AddProc(Target, 1, 5)
end

function proc(Caster, Target, ProcType)
  CastSpell(Target, 158312733, 1, Caster)
end

function remove(Caster, Target)
  RemoveProc(Target)
end
