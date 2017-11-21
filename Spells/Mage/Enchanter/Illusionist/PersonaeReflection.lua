function cast(Caster, Target)
  local Pet = SummonPet(Caster, 1360197, 25)
  CopySpawnAppearance(Pet, Caster)
end

function remove(Caster, Target)
  local Pet = GetPet(Caster)

  if pet ~= nil then
    DismissPet()
  end
end