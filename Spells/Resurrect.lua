function precast(Caster, Target)
  return (not IsInCombat(Caster)), 12
end

function cast(Caster, Target, Percentage, SpellName)
  Resurrect(Target, Percentage, Percentage, 1, SpellName, 2, 1)
end