function cast(Caster, Target)
  AddProc(Target, 1, 5)
  AddProc(Target, 2, 5)
  AddProc(Target, 14, 50)
end

function proc(Caster, Target)
  CastSpell(Caster, 1001284, 1)
end

function remove(Caster, Target)
  RemoveProc(Target)
end
