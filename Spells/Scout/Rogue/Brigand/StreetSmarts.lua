function cast(Caster, Target, Agi, Avoidance, Resists, Mit)
  AddSpellBonus(Caster, 2, Agi)
  AddSpellBonus(Caster, 201, Resists)
  AddSpellBonus(Caster, 202, Resists)
  AddSpellBonus(Caster, 203, Resists)
  AddSpellBonus(Caster, 204, Mit)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
end