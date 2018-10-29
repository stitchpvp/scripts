function cast(Caster, Target, Health, HealthTick, Power, PowerTick, SnareAmount)
  local power_percentage = GetMaxPower(Target) * Power
  local hp_percentage = GetMaxHP(Target) * Health
  SpellDamage(Target, 5, hp_percentage, hp_percentage)
  ModifyPower(Target, power_percentage)
  SetSpellSnareValue(SnareAmount, Target)
  AddControlEffect(Target, 11)
end

function tick(Caster, Target, Health, HealthTick, Power, PowerTick)
  local powertick_percentage = GetMaxPower(Target) * PowerTick
  local hptick_percentage = GetMaxHP(Target) * HealthTick
  SpellDamage(Target, 5, hptick_percentage, hptick_percentage)
  ModifyPower(Target, powertick_percentage)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 11)
end
