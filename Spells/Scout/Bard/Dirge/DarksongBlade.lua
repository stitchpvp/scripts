function cast(Caster, Target, MinDmg, MaxDmg, DotAmt)
  SpellDamage(Target, 8, MinDmg, MaxDmg)

  if LastSpellAttackHit() then
    SpellDamage(Target, 8, MinDmg, MaxDmg)
  end

  if LastSpellAttackHit() then
    SpellDamage(Target, 8, DotAmt)
  end
end

function tick(Caster, Target, MinDmg, MaxDmg, DotAmt)
  if LastSpellAttackHit() then
    SpellDamage(Target, 8, DotAmt)
  end
end