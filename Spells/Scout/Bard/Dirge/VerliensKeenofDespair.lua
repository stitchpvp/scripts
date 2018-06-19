function cast(Caster, Target, DebuffAmt)
  AddSpellBonus(Target, 202, DebuffAmt)
  CastSpell(Target, 198509038, 1, Caster)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end