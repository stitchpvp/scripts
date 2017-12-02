function cast(Caster, Target, ID)
  SummonPet(Caster, ID)
end

function remove(Caster, Target)
  local pet = GetPet(Caster)

  if pet ~= nil then
    DismissPet(pet)
  end
end
