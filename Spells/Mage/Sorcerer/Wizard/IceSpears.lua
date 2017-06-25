function cast(Caster, Target, MinDmg, MaxDmg, Debuff)
  AddSpellBonus(Target, 201, Debuff)

  SpellDamage(Target, 4, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 4, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end