function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 3, MinDmg, MaxDmg)

  if LastSpellAttackHit() then
    SpellDamage(Target, 3, MinDmg, MaxDmg)
  end
end
