function cast(Caster, Target)
  local var_name = "Spell_" .. GetName(Caster) .. "_Feast"

  SetSpellTriggerCount(1, 1)

  AddProc(Target, 2, 100)
  SetTempVariable(Target, var_name, GetHP(Target))
end

function proc(Caster, Target, Type)
  if GetSpellTriggerCount() > 0 then
    local spell_caster = GetCaster()
    local var_name = "Spell_" .. GetName(spell_caster) .. "_Feast"

    local start_hp = GetTempVariable(Caster, var_name)
    local target_hp = start_hp - (start_hp * 0.2)

    if GetHP(Caster) <= target_hp then
      CastSpell(spell_caster, 225120164, 1, spell_caster, true)

      RemoveTriggerFromSpell()
    end
  end
end

function remove(Caster, Target)
  local var_name = "Spell_" .. GetName(Caster) .. "_Feast"

  RemoveProc(Target)
  SetTempVariable(Target, var_name, nil)
end
