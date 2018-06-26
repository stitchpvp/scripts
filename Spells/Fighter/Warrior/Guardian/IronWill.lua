function cast(Caster, Target, MaxHealth, Resistances)
  AddSpellBonus(Caster, 500, MaxHealth)
  AddSpellBonus(Caster, 201, Resistances)
  AddSpellBonus(Caster, 202, Resistances)
  AddSpellBonus(Caster, 203, Resistances)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
end