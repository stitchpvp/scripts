function precast(Caster, Target)
  local pet = GetPet(Caster)
  
  if pet == nil then
	return false
  else
    return true
  end
end

function cast(Caster, Target, WardAmt, Debuff, MaxHealth, Resists)
  local pet = GetPet(Caster)
  AddWard(pet, WardAmt, 1, 0)
  AddSpellBonus(pet, 617, Debuff)
  AddSpellBonus(pet, 500, MaxHealth)
  AddSpellBonus(pet, 201, Resists)
  AddSpellBonus(pet, 202, Resists)
  AddSpellBonus(pet, 203, Resists)
  CastSpell(pet, 29662981, 1, Caster)
end

function tick(Caster, Target, WardAmt, Debuff, MaxHealth, Resists)
  local pet = GetPet(Caster)
  AddToWard(pet, WardAmt)
end

function remove(Caster, Target)
  local pet = GetPet(Caster)

  if pet ~= nil then
	CastSpell(pet, 29662981, 1, Caster)
	RemoveWard(pet)
	RemoveSpellBonus(pet)
  end
end