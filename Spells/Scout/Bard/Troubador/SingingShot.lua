function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 6, MinDmg, MaxDmg)

  if LastSpellAttackHit() then
    SpellDamage(Target, 6, MinDmg, MaxDmg)

    if LastSpellAttackHit() then
      AddControlEffect(Target, 2)
    else
      CancelSpell()
    end
  end
end