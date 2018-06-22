function cast(Caster, Target, MinDmg, MaxDmg)
  AddProc(Target, 1, 12.0)
end

function proc(Caster, Target, Type, MinDmg, MaxDmg)
  ProcDamage(Caster, Target, "Crypt's Revenge", 8, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveProc(Target)
end