function cast(Caster, Target)
  AddProc(Target, 5, 100)
end

function proc(Caster, Target, Type, MinDmg, MaxDmg)
  ProcDamage(Caster, Target, "Curse of Darkness", 9, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveProc(Target)
end
