function cast(Caster, Target)
  SetPlayerTriggerCount(Target, 4)
  AddProc(Target, 2, 100)
end

function proc(Caster, Target, ProcType, MinHeal, MaxHeal)
  if GetSpellTriggerCount() > 0 then
    local spell_caster = GetCaster()
	
    RemoveTriggerFromPlayer(Caster)
  
    ProcHeal(spell_caster, Caster, "Divine Prayer", "Heal", MinHeal, MaxHeal)
  end
end

function remove(Caster, Target)
  RemoveProc(Target)
end
