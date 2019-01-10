function cast(Caster, Target, PowerRegen, HPRegen)
  Charm(Caster, Target)

  local pet = GetCharmedPet(Caster)
  AddSpellBonus(pet, 600, HPRegen)
  AddSpellBonus(pet, 601, PowerRegen)
end

function remove(Caster, Target)
  local pet = GetCharmedPet(Caster)

  if pet ~= nil then
	RemoveSpellBonus(pet)
	DismissPet(pet)
  end
end
