function cast(Caster, MovementSpeed)
  local power_percentage = GetPower(Caster) * -0.1

  AddSpellBonus(Caster, 616, MovementSpeed)
  ModifyPower(Caster, power_percentage)
end

function tick(Caster)
  local power_percentage = GetPower(Caster) * -0.1
  
  ModifyPower(Caster, power_percentage)
end

function remove(Caster)
  RemoveSpellBonus(Caster)
end