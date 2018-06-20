function precast(Caster, Target)
  local power_check = GetPower(Caster) / GetMaxPower(Caster)

  if power_check == 0 then
    return false
  else
    return true
  end
end

function cast(Caster, Target, MovementSpeed)
  local power_percentage = GetMaxPower(Caster) * -0.1

  AddSpellBonus(Caster, 616, MovementSpeed)
  ModifyPower(Caster, power_percentage)
end

function tick(Caster)
  local power_check = GetPower(Caster) / GetMaxPower(Caster)
  local power_percentage = GetMaxPower(Caster) * -0.1
  
  if power_check == 0 then
    CancelSpell()
  else
    ModifyPower(Caster, power_percentage)
  end
end

function remove(Caster)
  RemoveSpellBonus(Caster)
end