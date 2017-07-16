function cast(Caster, Target, MinDmg, MaxDmg)
  AddProc(Target, 4, 100)
end

function proc(Caster, Target, ProcType, MinDmg, MaxDmg)
  ProcDamage(Caster, Target, "Thorns", 2, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveProc(Target)
end
