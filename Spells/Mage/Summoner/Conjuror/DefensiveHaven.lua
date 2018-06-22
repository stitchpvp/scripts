function cast(Caster, Target, WardAmt, Debuff, MaxHealth, Resists)
local pet = GetPet(Caster)
  if not HasSpellEffect(pet, 62142793) then
    AddWard(Target, WardAmt, 1, 1)
    AddSpellBonus(Target, 617, Debuff)
    AddSpellBonus(Target, 500, MaxHealth)
    AddSpellBonus(Target, 201, Resists)
    AddSpellBonus(Target, 202, Resists)
    AddSpellBonus(Target, 203, Resists)
  else
    SendMessage(Caster, "You already have a pet stance up!", "yellow")
end

function tick(Caster, Target, WardAmt)
  AddToWard(Target, WardAmt)
end

function remove(Caster, Target)
  RemoveWard(Target)
  RemoveSpellBonus(Target)
end