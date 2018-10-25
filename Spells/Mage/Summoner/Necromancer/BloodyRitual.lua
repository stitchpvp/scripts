function precast(Caster, Target)
  local hp_check = GetHP(Target) / GetMaxHP(Target)
  if hp_check > 0.10 then
    return true
  else
    SendMessage(Caster, "Pet's health must be over 10%", "yellow")
    return false, 63
  end
end

function cast(Caster, Target, Damage, PowerAmount)
  local hp_percentage = GetMaxHP(Target) * Damage
  local hp_check = GetHP(Target) / GetMaxHP(Target)
  if hp_check > 0.10 then
    ModifyHP(Target, hp_percentage)
    SpellHeal(Caster, "Power", PowerAmount)
  end
end

function tick(Caster, Target, Damage, PowerAmount)
  local hp_percentage = GetMaxHP(Target) * Damage
  local hp_check = GetHP(Target) / GetMaxHP(Target)
  if hp_check > 0.10 then
    ModifyHP(Target, hp_percentage)
    SpellHeal(Caster, "Power", PowerAmount)
  else
    CancelSpell()
  end
end
