function cast(Caster, Target)
  local var_name = "Spell_" .. GetName(Caster) .. "_HealingFate"

  AddProc(Target, 2, 100)
  SetTempVariable(Target, var_name, GetHP(Target))
end

function proc(Caster, Target, Type, SpellID)
  local spell_caster = GetCaster()
  local var_name = "Spell_" .. GetName(spell_caster) .. "_HealingFate"

  local start_hp = GetTempVariable(Caster, var_name)
  local target_hp = start_hp - (start_hp * 0.2)

  if GetHP(Caster) <= target_hp then
    CastSpell(spell_caster, SpellID, 1, spell_caster, true)
    CancelSpell()
  end
end

function remove(Caster, Target)
  local var_name = "Spell_" .. GetName(Caster) .. "_HealingFate"

  RemoveProc(Target)
  SetTempVariable(Target, var_name, nil)
end
