function precast (Caster, Target)
  local Pet = GetPet(Caster)

  if Pet ~= nil then
    return true
  else
    return false
  end
end

function cast(Caster, Target, dmg, power)
local Pet = GetPet(Caster)
  SpellDamage(Pet, 5, dmg)
  SpellHeal(Caster, "Power", power)
end

function tick(Caster, Target, dmg, power)
local Pet = GetPet(Caster)
  SpellDamage(Pet, 5, dmg)
  SpellHeal(Caster, "Power", power)
end

