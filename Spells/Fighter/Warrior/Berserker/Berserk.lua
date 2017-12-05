function cast(Caster, Target, Amount)
  AddSpellBonus(Caster, 617, Amount)
  AddSpellBonus(Caster, 629, Amount)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
end
