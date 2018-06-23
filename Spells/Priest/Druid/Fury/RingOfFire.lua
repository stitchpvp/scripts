function cast(Caster, Target, PetID)
  local x = GetX(Caster)
  local y = GetY(Caster)
  local z = GetZ(Caster)

  SummonDumbFirePet(Caster, Target, PetID, x, y, z)
  
  local pet = GetSpawn(Caster, PetID)
  AddControlEffect(pet, 3)
  AddControlEffect(pet, 5)
end

function remove(Caster, Target, PetID)
  local pet = GetSpawn(Caster, PetID)

  RemoveControlEffect(pet, 3)
  RemoveControlEffect(pet, 5)
end