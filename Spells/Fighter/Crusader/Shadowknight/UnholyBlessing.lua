function cast(Caster, Target, MinDmg, MaxDmg, MinHeal, MaxHeal)
  SetSpellTriggerCount(5, 1)

  AddProc(Target, 2, 100)
end

function proc(Caster, Target, Type, MinDmg, MaxDmg, MinHeal, MaxHeal)
  if GetSpellTriggerCount() > 0 then
    RemoveTriggerFromSpell()

    ProcDamage(Caster, Target, "Voracious Soul", 8, MinDmg, MaxDmg)
    ProcHeal(Caster, Caster, "Unholy Blessing", "Heal", MinHeal, MaxHeal)
  end
end

function remove(Caster, Target)
  RemoveProc(Target)
end
