function cast(Caster, Target, Attributes, Haste, DPS, Crushing, Slashing, Heal, HealTick, Percentage, SpellName)
  Resurrect(Target, Percentage, Percentage, 1, SpellName, 2, 1)
end

function remove(Caster, Target)
  CastSpell(Target, 252273, 1, Caster)
  ApplySpellVisual(Target, 1563)
end
