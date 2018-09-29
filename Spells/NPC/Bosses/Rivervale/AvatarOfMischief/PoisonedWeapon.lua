function cast(Caster, Target, Chance)
  AddProc(Caster, 3, Chance)
end

function proc(Caster, Target, Type, Chance, MinDmg, MaxDmg)
  ProcDamage(Caster, Target, "Poisoned Weapon", 9, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveProc(Caster)
end