function cast(Caster, Target)
  SetSpellTriggerCount(5, 1)
  AddProc(Caster, 3, 100)
end

function proc(Caster, Target, ProcType, MinDmg, MaxDmg)
  if GetSpellTriggerCount() > 0 then
    local spell_caster = GetCaster()
	
    RemoveTriggerFromSpell()
  
    ProcDamage(spell_caster, Target, "Vengeance", 7, MinDmg, MaxDmg)
  end
end

function remove(Caster, Target)
  RemoveProc(Caster)
end