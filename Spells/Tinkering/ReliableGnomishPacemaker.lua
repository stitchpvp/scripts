function cast(Caster, Target, Chance, HPandPowerPerc, Trigger)
  SetSpellTriggerCount(Trigger, 1)
  AddProc(Caster, 13, Chance)
end

function proc(Caster, Target, ProcType, Chance, HPandPowerPerc, Trigger)
  if GetSpellTriggerCount() > 0 then
	local hp = GetMaxHP(Caster) * HPandPowerPerc
	local power = GetMaxPower(Caster) * HPandPowerPerc

	RemoveTriggerFromSpell()

	ProcHeal(Caster, Caster, "Reliable Gnomish Pacemaker", "Heal", hp, hp, false)
	ProcHeal(Caster, Caster, "Reliable Gnomish Pacemaker", "Power", power, power, false)
  end
end

function remove(Caster, Target)
  RemoveProc(Caster)
end