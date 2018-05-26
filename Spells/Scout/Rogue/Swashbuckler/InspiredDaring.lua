function cast(Caster, Target)
  AddProc(Caster, 3, 100)
end

function proc(Caster, Target, Type, MinDmg, MaxDmg)
  ProcDamage(Caster, Target, "Daring Attack", 2, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveProc(Caster)
end
