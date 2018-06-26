function cast(Caster, Target)
  AddSpellBonus(Target, 0, -130) --[str]
  AddSpellBonus(Target, 1, -130) --[sta]
  AddSpellBonus(Target, 2, -130) --[agi]
  AddSpellBonus(Target, 3, -130) --[wis]
  AddSpellBonus(Target, 4, -130) --[int]]
  AddSpellBonus(Target, 617, -50) --[attack speed]
  AddSpellBonus(Target, 629, -50) --[DPS]
  AddSpellBonus(Target, 659, -10) --[potency]
  AddSpellBonus(Target, 664, -50) --[casting speed]
  AddControlEffect(Target, 11)
  SetSpellSnareValue(5, Target)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 11)
  RemoveSpellBonus(Target)
end