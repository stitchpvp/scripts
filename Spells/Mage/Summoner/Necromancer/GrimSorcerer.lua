function cast(Caster, Target)
  SummonPet(Caster, 331129)
end

function remove(Caster, Target)
  pet = GetPet(Caster)
  
  if pet ~= nil then
    DismissPet(pet)
  end
end
