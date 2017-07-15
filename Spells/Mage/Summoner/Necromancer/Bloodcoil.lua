function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 8, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 8, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
