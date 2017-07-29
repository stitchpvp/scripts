function cast(Caster, Target, MinDmg, MaxDmg, HealAmt)
SpellDamage(Target, 2, MinDmg, MaxDmg)
  if LastSpellAttackHit() then
      SpellHeal(caster, "Heal", HealAmt)
    end
end