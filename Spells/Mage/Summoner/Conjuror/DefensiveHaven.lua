function cast(Caster, Target, WardAmt, Debuff, MaxHealth, Resists)
  local pet = GetPet(Caster)
  if not HasSpellEffect(pet, 62142793) then
    AddWard(pet, WardAmt, 1, 1)
    AddSpellBonus(pet, 617, Debuff)
    AddSpellBonus(pet, 500, MaxHealth)
    AddSpellBonus(pet, 201, Resists)
    AddSpellBonus(pet, 202, Resists)
    AddSpellBonus(pet, 203, Resists)
  else
    SendMessage(Caster, "You already have a pet stance up!", "yellow")
  end
end

function tick(Caster, Target, WardAmt)
  local pet = GetPet(Caster)
  AddToWard(pet, WardAmt)
end

function remove(Caster, Target)
  local pet = GetPet(Caster)
  RemoveWard(pet)
  RemoveSpellBonus(pet)
end