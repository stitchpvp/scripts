function precast(Caster, Target)
  local hp_check = GetHP(Caster) / GetMaxHP(Caster)

  if hp_check <= 0.1 then
    return false
  else
    return true
  end
end

function cast(Caster, Target, MinHeal, MaxHeal)
  local hp_percentage = GetHP(Caster) * -0.1

  SpellHeal(Target, "Heal", MinHeal, MaxHeal)
  AddControlEffect(Caster, 2)
  ModifyHP(Caster, hp_percentage)
end

function tick(Caster, Target, MinHeal, MaxHeal)
  local hp_check = GetHP(Caster) / GetMaxHP(Caster)
  local hp_percentage = GetHP(Caster) * -0.1

  SpellHeal(Target, "Heal", MinHeal, MaxHeal)
  if hp_check <= 0.1 then
    CancelSpell()
  else
    ModifyHP(Caster, hp_percentage)
  end
end

function remove(Caster, Target)
  RemoveControlEffect(Caster, 2)
end