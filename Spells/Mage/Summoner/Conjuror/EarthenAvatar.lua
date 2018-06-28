function cast(Caster, Target)
  SummonPet(Caster, 331133)
end

function remove(Caster, Target)
  local pet = GetPet(Caster)

  if pet ~= nil then
    DismissPet(pet)
  end
end