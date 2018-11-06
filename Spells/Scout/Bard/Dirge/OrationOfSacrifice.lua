function precast(Caster, Target)
  local hp_check = GetHP(Caster) / GetMaxHP(Caster)

  if hp_check <= 0.1 then
    return false
  else
    return true
  end
end

function cast(Caster, Target, Heal, Percentage)
  local hp_percentage = GetMaxHP(Caster) * Percentage

  SpellHeal(Target, "Heal", Heal)
  AddControlEffect(Caster, 2)
  ModifyHP(Caster, hp_percentage)
end

function tick(Caster, Target, Heal, Percentage)
  local hp_check = GetHP(Caster) / GetMaxHP(Caster)
  local hp_percentage = GetMaxHP(Caster) * Percentage

  SpellHeal(Target, "Heal", Heal)
  if hp_check <= 0.1 then
    CancelSpell()
  else
    ModifyHP(Caster, hp_percentage)
  end
end

function remove(Caster, Target)
  RemoveControlEffect(Caster, 2)
end
