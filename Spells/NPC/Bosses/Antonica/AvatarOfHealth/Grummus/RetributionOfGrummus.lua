function cast(Caster, Target)
  AddProc(Caster, 4, 2.0)
  AddProc(Caster, 6, 2.0)
end

function proc(Target, Caster, ProcType)  
  CastSpell(Target, 114869549, 1, Caster) --Toxic Breath
end

function remove(Caster, Target)
  RemoveProc(Caster)
end
