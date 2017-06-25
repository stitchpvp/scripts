function cast(Caster, Target, MinDmg, MaxDmg, AtkSpd)
  AddSpellBonus(Target, 613, AtkSpd)
  SpellDamage(Target, 9, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 9, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
