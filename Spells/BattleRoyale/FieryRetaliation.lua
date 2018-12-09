function cast(Caster, Target, MinDmg, MaxDmg)
  AddProc(Caster, 2, 35)
end

function proc(Caster, Target, ProcType, MinDmg, MaxDmg)
  ProcDamage(Caster, Target, "Fiery Retaliation", 3, MinDmg, MaxDmg)
end
