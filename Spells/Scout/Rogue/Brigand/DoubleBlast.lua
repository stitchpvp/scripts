function cast(Caster, Target, MinDmg, MaxDmg, SpellID)
  SpellDamage(Target, 2, MinDmg, MaxDmg)

  if LastSpellAttackHit() then
    SpellDamage(Target, 2, MinDmg, MaxDmg)

    if LastSpellAttackHit() then
      CastSpell(Target, SpellID, 1, Caster)
    end
  end
end
