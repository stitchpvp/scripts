function cast(Caster, Target)
  local dmg = GetMaxHP(Target) * 0.15

  SpellDamage(Target, 8, dmg, dmg, 0, 1)
end

function tick(Caster, Target)
  local dmg = GetMaxHP(Target) * 0.15

  SpellDamage(Target, 8, dmg, dmg, 0, 1)
end
