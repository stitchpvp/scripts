function cast(Caster, Target, Crit, Cast, Reuse, Recovery, Multi, Flurry, Potency, CritBonus, Doublecast, AbMod, AEAuto, DPS, Haste)
  AddSpellBonus(Target, 654, Crit)
  AddSpellBonus(Target, 664, Cast)
  AddSpellBonus(Target, 662, Reuse)
  AddSpellBonus(Target, 663, Recovery)
  AddSpellBonus(Target, 641, Multi)
  AddSpellBonus(Target, 647, Flurry)
  AddSpellBonus(Target, 659, Potency)
  AddSpellBonus(Target, 657, CritBonus)
  AddSpellBonus(Target, 645, Doublecast)
  AddSpellBonus(Target, 707, AbMod)
  AddSpellBonus(Target, 639, AEAuto)
  AddSpellBonus(Target, 629, DPS)
  AddSpellBonus(Target, 617, Haste)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end