function cast(Caster, Target) 
  AddProc(Caster, 3, 100)
end

function proc(Caster, Target, Type)
  CastSpell(Caster, 231469052, 1)
end

function remove(Caster, Target)
  RemoveProc(Caster)
end