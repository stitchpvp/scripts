function cast(Caster, Target, PetID)
  local x = GetX(Caster)
  local y = GetY(Caster)
  local z = GetZ(Caster)

  SummonDumbFirePet(Caster, Target, PetID, x, y, z)
end