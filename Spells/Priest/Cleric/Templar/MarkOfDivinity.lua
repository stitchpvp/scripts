function cast(Caster, Target, Arcane)
  SetSpellTriggerCount(1, 1)

  AddSpellBonus(Target, 203, Arcane)
  AddProc(Target, 16, 20)
end

function proc(Caster, Target, Type, Arcane, SpellID)
  if GetSpellTriggerCount() > 0 then
    local spell_caster = GetCaster()

    RemoveTriggerFromSpell()

    CastSpell(Target, SpellID, 1, spell_caster)
  end
end

function remove(Caster, Target)
  RemoveProc(Target)
end
