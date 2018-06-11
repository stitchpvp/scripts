function cast(Caster, Target)
  AddProc(Target, 2, 25)
end

function proc(Caster, Target, Type)
  CastSpell(Target, 94253476, 1, Caster)
end

function remove(Caster, Target)
  RemoveProc(Target)
end