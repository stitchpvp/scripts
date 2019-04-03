function cast(Caster, Target, Heal, Percentage, SpellName)
  Resurrect(Target, Percentage, Percentage, 1, SpellName, 2, 1)
end

function remove(Caster, Target)
  CastSpell(Target, 112129284, 1, Caster)
  ApplySpellVisual(Target, 1563)
end
