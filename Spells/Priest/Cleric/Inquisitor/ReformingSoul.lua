function cast(Caster, Target, Mitigation, Health, Percentage, SpellName)
  Resurrect(Target, Percentage, Percentage, 1, SpellName, 2, 1)
end

function remove(Caster, Target)
  CastSpell(Target, 2177681, 1, Caster)
end