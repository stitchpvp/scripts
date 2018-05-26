function cast(Caster, Target, MinTermDmg, MaxTermDmg, MinDmg, MaxDmg, MinHeal, MaxHeal)
  SpellDamage(Target, 8, MinDmg, MaxDmg)

  if LastSpellAttackHit() then
    SpellDamage(Target, 8, MinTermDmg, MaxTermDmg)
    SpellHeal(Caster, "Heal", MinHeal, MaxHeal)
  end
end
