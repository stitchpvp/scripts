function cast(Caster, Target, Sta, Wis, Mit)
  AddSpellBonus(Target, 1, Sta)
  AddSpellBonus(Target, 3, Wis)
  AddSpellBonus(Target, 201, Mit)
  AddSpellBonus(Target, 202, Mit)
  AddSpellBonus(Target, 203, Mit)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
