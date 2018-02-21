function cast(Caster, Target)
  local dmg = GetMaxHP(Target) * 0.50

  SpellDamage(Target, 8, dmg, dmg)
end

function tick(Caster, Target)
  local dmg = GetMaxHP(Target) * 0.50

  SpellDamage(Target, 8, dmg, dmg)
end
