function cast(Caster, Target, PowerTick, Health, Percentage, SpellName)
  Resurrect(Target, Percentage, Percentage, 1, SpellName, 2, 1)
end

function remove(Caster, Target)
  CastSpell(Target, 18164179, 1, Caster)
  ApplySpellVisual(Target, 1563)
end