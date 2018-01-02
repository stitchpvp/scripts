function cast(Caster, Target, MinDmg, MaxDmg)
  AddProc(Target, 5, 30)
end

function proc(Caster, Target, Type, MinDmg, MaxDmg)
  ProcDamage(Caster, Target, "Dissonant Note", 6, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveProc(Target)
end