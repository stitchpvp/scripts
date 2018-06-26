function cast(Caster, Target)
  AddSpellBonus(Target, 0, -70) --str
  AddSpellBonus(Target, 1, -70) --sta
  AddSpellBonus(Target, 2, -70) --agi
  AddSpellBonus(Target, 3, -70) --wis
  AddSpellBonus(Target, 4, -70) --int
  AddSpellBonus(Target, 617, -50) --attack speed
  AddSpellBonus(Target, 629, -50) --DPS
  AddSpellBonus(Target, 664, -50) --casting speed
  AddSpellBonus(Target, 204, -500) --slashing physical mitigation
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end