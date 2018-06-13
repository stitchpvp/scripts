function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 7, MinDmg, MaxDmg)

  if LastSpellAttackHit() then
    CastSpell(Target, 96694323, 1, Caster)
  end
end