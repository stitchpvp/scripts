function cast(Caster, Target)
  local weapon = GetEquippedItemBySlot(Caster, 0)
  local proc_chance = GetProcPercentageForWeapon(weapon, 5.0)

  SetSpellTriggerCount(100, 1)
  AddProc(Target, 3, proc_chance)
end

function proc(Caster, Target, ProcType, MinDmg, MaxDmg)
  if GetSpellTriggerCount() > 0 then
    local spell_caster = GetCaster()
  
    RemoveTriggerFromSpell()
	
    ProcDamage(spell_caster, Target, "Caustic Poison", 9, MinDmg, MaxDmg)
  end
end

function remove(Caster, Target)
  RemoveProc(Target)
end