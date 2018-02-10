function cast(Caster, Target)
  local pet = GetPet(Target)

  Stealth(2, Target)

  if pet then
    Stealth(2, pet)
  end
end

function remove(Caster, Target)
  local pet = GetPet(Target)

  if pet then
    RemoveInvis(pet)
  end
end