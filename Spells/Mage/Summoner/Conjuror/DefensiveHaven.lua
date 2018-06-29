function precast(Caster, Target)
  local pet = GetPet(Caster)
  
  if pet ~= nil then
    if not HasSpellEffect(pet, 62142793) and not HasSpellEffect(pet, 96781662) then
	  return true
    else
      return false, 73
    end
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
end

function tick(Caster, Target, WardAmt, Debuff, MaxHealth, Resists)
  local pet = GetPet(Caster)
  AddToWard(pet, WardAmt)
end

function remove(Caster, Target)
  local pet = GetPet(Caster)
  RemoveWard(pet)
  RemoveSpellBonus(pet)
end