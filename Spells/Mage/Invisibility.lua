function cast(Caster)
  local pet = GetPet(Caster)
  Stealth(1, Caster)
  Stealth(1, pet)
end

function remove(Caster)
  local pet = GetPet(Caster)
  RemoveStealth(pet)
end