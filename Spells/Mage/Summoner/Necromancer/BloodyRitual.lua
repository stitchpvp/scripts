function precast (Caster, Target)
  local Pet = GetPet(Caster)

  if Pet ~= nil
    return true
  else
    return false
  end
end

function cast(Caster, Pet, dmg, power)

  SpellDamage(Pet, 5, dmg)
  SpellHeal(Caster, "Power", power)
end

function tick(Caster, Pet, dmg, power)

  SpellDamage(Pet, 5, dmg)
  SpellHeal(Caster, "Power", power)
end