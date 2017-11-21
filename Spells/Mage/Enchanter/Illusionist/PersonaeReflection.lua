function cast(Caster, Target)
  local Pet = SummonPet(Caster, 1360197, 25)
  CopySpawnAppearance(Pet, Caster)
end

function remove(Caster, Target)
  local Pet = GetPet(Caster)

  if Pet ~= nil then
    DismissPet(Pet)
  end
end