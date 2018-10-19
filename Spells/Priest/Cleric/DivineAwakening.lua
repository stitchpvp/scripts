function precast(Caster, Target)
  return (not IsInCombat(Caster)), 12
end

function cast(Caster, Target)
  SummonItem(Target, 45975, 1)
  ApplySpellVisual(Target, 48)
end