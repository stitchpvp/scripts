function cast(Caster)
  AddProc(Caster, 3, 100)
end

function proc(Caster, Target, MinDmg, MaxDmg, MinUndeadDmg, MaxUndeadDmg)
  ProcDamage(Caster, Target, "Glorious Strike", 7, MinDmg, MaxDmg)
end

function remove(Caster)
  RemoveProc(Caster)
end