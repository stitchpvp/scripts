function cast(Caster, Target)
  SetSpellTriggerCount(3, 1)
  AddProc(Target, 1, 100)
end

function proc(Caster, Target, ProcType, MinDmg, MaxDmg)
  if GetSpellTriggerCount() > 0 then
    local spell_caster = GetCaster()
	
	CastSpell(Target, 54423060, 1, spell_caster)
    RemoveTriggerFromSpell()
	
    ProcDamage(Target, Caster, "Repenting Strike", 7, MinDmg, MaxDmg)
  end
end

function remove(Caster, Target)
  RemoveProc(Caster)
end