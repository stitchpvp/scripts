function cast(Caster, Target, MinDmg, MaxDmg, Debuff)
  AddSpellBonus(Target, 203, Debuff)
  SpellDamage(Target, 7, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg, Debuff)
  SpellDamage(Target, 7, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end