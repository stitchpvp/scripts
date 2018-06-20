function cast(Caster, Target)
  SetSpellTriggerCount(5, 1)

  AddProc(Target, 16, 100)
end

function proc(Caster, Target, Type, MinDmg, MaxDmg)
  if GetSpellTriggerCount() > 0 then
    RemoveTriggerFromSpell()

    ProcDamage(GetCaster(), Caster, "Agonizing Pain", 2, MinDmg, MaxDmg)
  end
end

function remove(Caster, Target)
  RemoveProc(Target)
end
