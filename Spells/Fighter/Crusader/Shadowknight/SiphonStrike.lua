function cast(Caster, Target, MinDmg, MaxDmg,  MinDmg2, MaxDmg2, HealMin, HealMax)
  SpellDamage(Target, 8, MinDmg, MaxDmg)

  if LastSpellAttackHit() then
    SpellDamage(Target, 8, MinDmg2, MaxDmg2)
    SpellHeal(Caster, "Heal", HealMin, HealMax)
  end
end
