function cast(Caster, Target)
  AddProc(Caster, 18, 14.4)
end

function proc(Caster, Target, Type)
  CastSpell(Target, 240067515, 1, Caster)
end

function remove(Caster)
  RemoveProc(Caster)
end