function cast(Caster, Target, Stat, Mit)
  AddSpellBonus(Target, 3, Stat)
  AddSpellBonus(Target, 4, Stat)
  AddSpellBonus(Target, 201, Mit)
  AddSpellBonus(Target, 202, Mit)
  AddSpellBonus(Target, 203, Mit)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
