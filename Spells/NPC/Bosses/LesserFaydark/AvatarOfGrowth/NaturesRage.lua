function cast(Caster, Target, Power, PowerTick, HighDmgMin, HighDmgMax, HighDmgTickMin, HighDmgTickMax, MedDmgMin, MedDmgMax, MedDmgTickMin, MedDmgTickMax, LowDmgMin, LowDmgMax, LowDmgTickMin, LowDmgTickMax)
  local power_percentage = GetMaxPower(Target) * Power

  ModifyPower(Target, power_percentage)

  if GetDistance(Caster, Target) < 9 then
    SpellDamage(Target, 9, HighDmgMin, HighDmgMax)
  end

  if GetDistance(Caster, Target) >= 9 and GetDistance(Caster, Target) <= 14 then
    SpellDamage(Target, 9, MedDmgMin, MedDmgMax)
  end

  if GetDistance(Caster, Target) > 14 and GetDistance(Caster, Target) <= 100 then
    SpellDamage(Target, 9, LowDmgMin, LowDmgMax)
  end
  BlurVision(Target, 50.0)
end

function tick(Caster, Target, Power, PowerTick, HighDmgMin, HighDmgMax, HighDmgTickMin, HighDmgTickMax, MedDmgMin, MedDmgMax, MedDmgTickMin, MedDmgTickMax, LowDmgMin, LowDmgMax, LowDmgTickMin, LowDmgTickMax)
  local power_percentage = GetMaxPower(Target) * PowerTick

  ModifyPower(Target, power_percentage)

  if GetDistance(Caster, Target) < 9 then
    SpellDamage(Target, 9, HighDmgTickMin, HighDmgTickMax)
  end

  if GetDistance(Caster, Target) >= 9 and GetDistance(Caster, Target) <= 14 then
    SpellDamage(Target, 9, MedDmgTickMin, MedDmgTickMax)
  end

  if GetDistance(Caster, Target) > 14 and GetDistance(Caster, Target) <= 100 then
    SpellDamage(Target, 9, LowDmgTickMin, LowDmgTickMax)
  end
end

function remove(Caster, Target)
  BlurVision(Target, 0.0)
end
