function cast(Caster, Target, MinDmg, MaxDmg, HealAmt)
  SpellDamage(Target, 8, MinDmg, MaxDmg)

  if LastSpellAttackHit() then
    SpellHeal(Caster, "Heal", HealAmt)
  end
end