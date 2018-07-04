function cast(Caster, Target, Heal)

  AddProc(Caster, 5, 100)
end

function proc(Caster, Target, Type, Heal)
  local heal_pct = GetMaxHP(Caster) * Heal

  ProcHeal(Caster, Caster, "Reaver's Mania", "Heal", heal_pct)
end

function remove(Caster, Target)
  RemoveProc(Caster)
end