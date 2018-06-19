function cast(Caster, Target, MinDmg, MaxDmg)
  AddControlEffect(Target, 4)
  SpellDamage(Target, 5, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 4)
end