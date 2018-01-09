function cast(Caster)
  AddSpellBonus(Caster, 0, 30)
  AddSpellBonus(Caster, 4, 30)
  AddSpellBonus(Caster, 617, 50)
  AddSpellBonus(Caster, 629, 50)
  AddSpellBonus(Caster, 659, 50)
end

function CombatReset(Caster)
  RemoveSpellBonus(Caster)
end
