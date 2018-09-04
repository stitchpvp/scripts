function cast(Caster, Target, WardAmt)
  AddProc(Target, 2, 100)
  AddWard(Target, WardAmt, 0, 0)
end

function proc(Victim, Attacker)
  local heal = GetLastDamageWarded(Victim)

  if heal > 0 then
    ProcHeal(GetCaster(), Victim, "Repent", "Heal", heal, heal)
  end
end

function remove(Caster, Target)
  RemoveProc(Target)
  RemoveWard(Target)
end
