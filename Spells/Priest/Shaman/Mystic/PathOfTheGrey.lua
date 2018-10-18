function cast(Caster, Target, CasterMaxHealth, Health, Percentage, SpellName)
  Resurrect(Target, Percentage, Percentage, 1, SpellName, 2, 1)
end

function remove(Caster, Target)
  CastSpell(Target, 229606928, 1, Caster)
end