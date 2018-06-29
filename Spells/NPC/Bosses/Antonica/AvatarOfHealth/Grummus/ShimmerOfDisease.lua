function cast(Caster, Target)
  AddProc(Target, 5, 33)
  SpellDamage(Target, 8, 5, 25, 2)
end

function tick(Caster, Target)
  ProcDamage(Caster, Target, "Shimmer of Disease", 8, 1, 10)
end

function proc(Attacker, Target, ProcType)
  ProcDamage(GetCaster(), Caster, "Shimmer of Disease", 8, 5, 25)
end

function remove(Caster, Target)
  RemoveProc(Target)
end
