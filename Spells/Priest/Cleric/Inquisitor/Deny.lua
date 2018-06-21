function cast(Caster, Target, Debuff)
  AddSpellBonus(Target, 0, Debuff)
  AddSpellBonus(Target, 4, Debuff)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end