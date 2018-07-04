function cast(Caster, Target, Heal)
  local heal_pct = GetMaxHP(Caster) * Heal

  AddProc(Caster, 5, 100)
end

function proc(Caster, Target, Type, Heal)
  ProcHeal(Caster, Caster, "Reaver's Mania", "Heal", Heal)
end

function remove(Caster, Target)
  RemoveProc(Caster)
end