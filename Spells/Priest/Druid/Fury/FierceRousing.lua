function cast(Caster, Target, Health, Percentage, SpellName)
  Resurrect(Target, Percentage, Percentage, 1, SpellName, 2, 1)
end

function remove(Caster, Target)
  CastSpell(Target, 267415737, 1, Caster)
  ApplySpellVisual(Target, 1563)
end