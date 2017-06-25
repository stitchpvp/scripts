function cast(Caster, Target, Damage, Debuff)
  AddSpellBonus(Target, 3, Debuff)
  SpellDamage(Target, 9, Damage, Damage)
end

function tick(Caster, Target, Damage)
  SpellDamage(Target, 9, Damage, Damage)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
