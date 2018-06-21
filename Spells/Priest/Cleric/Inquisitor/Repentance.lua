function cast(Caster, Target)
  SetSpellTriggerCount(5, 1)
  AddProc(Caster, 1, 100)
end

function proc(Caster, Target, ProcType, MinDmg, MaxDmg)
  if GetSpellTriggerCount() > 0 then
    local spell_caster = GetCaster()
	
    RemoveTriggerFromSpell()
	
    CastSpell(spell_caster, 54423060, 1, Target)
    ProcDamage(spell_caster, Target, "Repenting Strike", 7, MinDmg, MaxDmg)
  end
end

function remove(Caster, Target)
  RemoveProc(Caster)
end