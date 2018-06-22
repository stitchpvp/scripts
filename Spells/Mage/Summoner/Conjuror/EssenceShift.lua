function cast(Caster, Target, Damage, PowerAmount)
  local hp_percentage = GetMaxHP(Target) * Damage
  ModifyHP(Target, hp_percentage)
  SpellHeal(Caster, "Power", PowerAmount)
end