function cast(Caster, Target, Debuff)
  Interrupt(Caster, Target)
  AddSpellBonus(Target, 2, Debuff)
  CastSpell(Target, 192549785, 1, Caster)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
