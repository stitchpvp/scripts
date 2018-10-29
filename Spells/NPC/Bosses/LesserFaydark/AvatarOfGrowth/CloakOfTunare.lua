function cast(Caster, Target, Chance)
  AddProc(Caster, 2, Chance)
end

function proc(Caster, Target, ProcType)
  CastSpell(Target, 137392032, 1, Caster)
end

function remove(Caster, Target)
  RemoveProc(Caster)
end
