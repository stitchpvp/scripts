function cast(Caster, Target, MinDmg, MaxDmg, Debuff)
  SpellDamage(Target, 2, MinDmg, MaxDmg)
  AddSpellBonus(Target, 609880714, Debuff)
end

function tick(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 2, MinDmg, MaxDmg)
end