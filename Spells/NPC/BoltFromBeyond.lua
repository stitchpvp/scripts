function cast(Caster, Target, Health, HealthTick, Power, PowerTick)
  local power_percentage = GetMaxPower(Target) * Power
  local hp_percentage = GetMaxHP(Target) * Health
  ProcDamage(Caster, Target, "Bolt From Beyond", 7, hp_percentage, hp_percentage)
  ModifyPower(Target, power_percentage)
  AddControlEffect(Target, 2)
  AddControlEffect(Target, 4)
  Interrupt(Caster, Target)
end

function tick(Caster, Target, Health, HealthTick, Power, PowerTick)
  local powertick_percentage = GetMaxPower(Target) * PowerTick
  local hptick_percentage = GetMaxHP(Target) * HealthTick
  ProcDamage(Caster, Target, "Mother Nature's Rebuke", 7, hptick_percentage, hptick_percentage)
  ModifyPower(Target, powertick_percentage)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 2)
  RemoveControlEffect(Target, 4)
end
