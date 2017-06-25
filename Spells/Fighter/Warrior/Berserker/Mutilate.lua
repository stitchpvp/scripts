function cast(Caster, Target, MinDmg, MaxDmg, DotDmg, Debuff)
  SpellDamage(Target, 0, MinDmg, MaxDmg)
  SpellDamage(Target, 0, DotDmg)
  AddSpellBonus(Target, 613, Debuff)
end

function tick(Caster, Target, MinDmg, MaxDmg, DotDmg)
  SpellDamage(Target, 0, DotDmg)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end