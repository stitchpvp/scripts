function cast(Caster, Target, MinDmg, MaxDmg)
  Interrupt(Caster, Target)
  SpellDamage(Target, 5, MinDmg, MaxDmg)

  local power_percentage = GetMaxPower(Target) * -0.02

  ModifyPower(Target, power_percentage)

  local roll_1 = math.random(1, 100)
  if roll_1 <= 10 then
    CastSpell(Target, 178326336, 1, Caster) -- Mischievous Incapacitation
  end

  local roll_2 = math.random(1, 100)
  if roll_2 <= 10 then
    CastSpell(Target, 76563254, 1, Caster) -- Mischievous Pacification
  end

  local roll_3 = math.random(1, 100)
  if roll_3 <= 20 then
    CastSpell(Target, 37359554, 1, Caster) -- Mischievous Stifling
  end

  local roll_4 = math.random(1, 100)
  if roll_4 <= 25 then
    CastSpell(Target, 168176016, 1, Caster) -- Mischievous Entanglement
  end

  local roll_5 = math.random(1, 100)
  if roll_5 <= 33 then
    CastSpell(Target, 238566499, 1, Caster) -- Mischievous Mesmerization
  end
end

function tick(Caster, Target, ProcType, MinDmg, MaxDmg)
  SpellDamage(Target, 5, MinDmg, MaxDmg)

  local power_percentage = GetMaxPower(Target) * -0.02

  ModifyPower(Target, power_percentage)
end
