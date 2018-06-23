function cast(Caster, Target, MinDmg, MaxDmg, Debuff)
  SpellDamage(Target, 0, MinDmg, MaxDmg)
  AddSpellBonus(Target, 629, Debuff)
end

function tick(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 0, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end