function cast(Caster, Target, PetID)
  SummonPet(Caster, PetID)
end

function remove(Caster, Target)
  local pet = GetPet(Caster)

  if pet ~= nil then
    DismissPet(pet)
  end
end