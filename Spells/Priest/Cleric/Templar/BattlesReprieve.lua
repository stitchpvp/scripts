function cast(Caster, Target, Health, Mitigation, Percentage, SpellName)
  Resurrect(Target, Percentage, Percentage, 1, SpellName, 2, 1)
end

function remove(Caster, Target)
  CastSpell(Target, 125639000, 1, Caster)
end