function cast(Caster, Target, Health, Mit)
  AddSpellBonus(Target, 500, Health, 1)
  AddSpellBonus(Target, 204, Mit, 11, 21, 31)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
