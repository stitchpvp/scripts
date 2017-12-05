function cast(Caster, Target, StamAmt, SpellDmgAmt)
  AddSpellBonus(Target, 1, StamAmt)
  AddSpellBonus(Target, 700, SpellDmgAmt)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
