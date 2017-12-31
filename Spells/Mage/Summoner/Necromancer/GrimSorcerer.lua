function cast(Caster, Target)
  SummonPet(Caster, 7720008)
end

function remove(Caster, Target)
  local pet = GetPet(Caster)

  if pet ~= nil then
    DismissPet(pet)
  end
end
