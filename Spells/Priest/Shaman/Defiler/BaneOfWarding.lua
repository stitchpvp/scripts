function cast(Caster, Target)
  AddProc(Target, 1, 25)
end

function proc(Caster, Target)
  CastSpell(Target, 209545949, 1, GetCaster())
end

function remove(Caster, Target)
  RemoveProc(Target)
end
