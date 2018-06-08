function cast(Caster, Target)
  SetPlayerTriggerCount(Target, 4)
  AddProc(Target, 2, 100)
end

function proc(Caster, Target, ProcType, MinHeal, MaxHeal)
  local spell_caster = GetCaster()

  ProcHeal(spell_caster, Caster, "Divine Prayer", "Heal", MinHeal, MaxHeal)
  RemoveTriggerFromPlayer(Caster)
end

function remove(Caster, Target)
  RemoveProc(Target)
end
