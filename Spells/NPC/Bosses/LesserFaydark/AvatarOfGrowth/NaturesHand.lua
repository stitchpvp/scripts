function cast(Caster, Target, Power, PowerTick, Health, HealthTick)
  local power_percentage = GetMaxPower(Target) * Power
  local hp_percentage = GetMaxHP(Target) * Health
  ProcDamage(Caster, Target, "Nature's Hand", 5, hp_percentage, hp_percentage)
  ModifyPower(Target, power_percentage)
end

function tick(Caster, Target, Power, PowerTick, Health, HealthTick)
  local powertick_percentage = GetMaxPower(Target) * PowerTick
  local hptick_percentage = GetMaxHP(Target) * HealthTick
  ProcDamage(Caster, Target, "Nature's Hand", 5, hptick_percentage, hptick_percentage)
  ModifyPower(Target, powertick_percentage)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 2)
  RemoveControlEffect(Target, 5)
end
