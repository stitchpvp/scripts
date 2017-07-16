function cast(Caster, Target, Stats, BaseAvoidance, Mit)
  AddSpellBonus(Target, 2, Stats)
  AddSpellBonus(Target, 3, Stats)
  AddSpellBonus(Target, 201, Mit)
  AddSpellBonus(Target, 202, Mit)
  AddSpellBonus(Target, 203, Mit)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
