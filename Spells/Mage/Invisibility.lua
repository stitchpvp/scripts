function cast(Caster)
  local pet = GetPet(Caster)

  Stealth(2, Caster)

  if pet then
    Stealth(2, pet)
  end
end

function remove(Caster)
  local pet = GetPet(Caster)

  if pet then
    RemoveInvis(pet)
  end
end
