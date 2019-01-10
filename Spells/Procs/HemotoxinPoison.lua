function cast(Caster, Target)
  local weapon = GetEquippedItemBySlot(Caster, 0)
  local proc_chance = GetProcPercentageForWeapon(weapon, 5.0)

  SetSpellTriggerCount(100, 1)
  AddProc(Target, 3, proc_chance)
end

function proc(Caster, Target, ProcType)
  if GetSpellTriggerCount() > 0 then
    local spell_caster = GetCaster()
    if HasSpellEffect(Target, 217660483) then
	  return
    else
	  RemoveTriggerFromSpell()
      CastSpell(Caster, 217660483, 1, spell_caster)
    end
  end
end

function remove(Caster, Target)
  RemoveProc(Target)
end
