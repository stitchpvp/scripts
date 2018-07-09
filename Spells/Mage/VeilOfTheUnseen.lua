function precast(Caster)
  return (not IsInCombat(Caster)), 12
end

function cast(Caster, Target)
  Stealth(2, Target)
  AddImmunitySpell(Target, 7)
end

function remove(Caster, Target)
  RemoveImmunitySpell(Target, 7)
end