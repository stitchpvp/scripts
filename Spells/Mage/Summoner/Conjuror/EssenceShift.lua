function cast(Caster, Target, Damage, PowerAmount)
  local hp_percentage = GetMaxHP(Target) * Damage
  local hp_check = GetHP(Target) / GetMaxHP(Target)
  if hp_check > 0.10
    ModifyHP(Target, hp_percentage)
    SpellHeal(Caster, "Power", PowerAmount)
  else
    SendMessage(Caster, "Pet's health must be over 10%", "yellow")
  end
end
