function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 6, MinDmg, MaxDmg)
  AddControlEffect(Target, 3)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 3)
end