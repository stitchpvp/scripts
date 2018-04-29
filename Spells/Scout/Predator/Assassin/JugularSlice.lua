function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 0, MinDmg, MaxDmg)

  if LastSpellAttackHit() then
    AddControlEffect(Target, 2)
  end
end
