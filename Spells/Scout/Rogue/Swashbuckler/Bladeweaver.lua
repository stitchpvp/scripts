function cast(Caster, Target, Agi, Avoidance, Resists, Health)
  AddSpellBonus(Caster, 2, Agi)
  AddSpellBonus(Caster, 696, Avoidance)
  AddSpellBonus(Caster, 201, Resists)
  AddSpellBonus(Caster, 202, Resists)
  AddSpellBonus(Caster, 203, Resists)
  AddSpellBonus(Caster, 500, Health)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
end
