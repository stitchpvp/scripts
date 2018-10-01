function cast(Caster, Target, Amount) 
  SetSpellTriggerCount(1, 1)
  AddSpellBonus(Caster, 664, Amount)
  AddProc(Caster, 5, 100)
  AddProc(Caster, 11, 100)
  AddProc(Caster, 12, 100)
end

function proc(Caster, Target, ProcType) 
  if GetSpellTriggerCount() > 0 then
    RemoveTriggerFromSpell()
  end
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
  RemoveProc(Caster)
end
