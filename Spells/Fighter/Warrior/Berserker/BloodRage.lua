function cast(Caster, Target)
  AddProc(Caster, 4, 33)
end

function proc(Caster, Target, ProcType, MinHeal, MaxHeal)
  CastSpell(Caster, 129986450, 1)
end

function remove(Caster, Target)
  RemoveProc(Caster)
end
