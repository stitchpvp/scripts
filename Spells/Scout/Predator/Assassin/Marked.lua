function cast(Caster, Target)
  SetSpellTriggerCount(5, 1)

  AddProc(Target, 16, 100)
end

function proc(Caster, Target, Type, MinDmg, MaxDmg)
  ProcDamage(GetCaster(), Target, "Agonizing Pain", 3, MinDmg, MaxDmg)

  RemoveTriggerFromSpell()
end

function remove(Caster, Target)
  RemoveProc(Target)
end