function cast(Caster, Target, Sta, Mit)
  AddSpellBonus(Target, 1, Sta)
  AddSpellBonus(Target, 201, Mit)
  AddSpellBonus(Target, 207, Mit)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
