function cast(Caster, Target)
  local var_name = "Spell_" .. GetName(Caster) .. "_HealingFate"

  AddProc(Target, 2, 100)
  SetTempVariable(Target, var_name, GetHP(Target))
end

function proc(Caster, Target, Type, SpellID)
  local var_name = "Spell_" .. GetName(Caster) .. "_HealingFate"

  local start_hp = GetTempVariable(Target, var_name)
  local target_hp = start_hp - (start_hp * 0.2)

  if GetHP(Target) <= target_hp then
    CastSpell(Caster, SpellID, 1)
    CancelSpell()
  end
end

function remove(Caster, Target)
  RemoveProc(Target)
end