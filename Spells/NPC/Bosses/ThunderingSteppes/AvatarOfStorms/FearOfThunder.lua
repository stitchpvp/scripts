function cast(Caster, Target, MinDmg, MaxDmg)
  AddControlEffect(Target, 6)
  SpellDamage(Target, 4, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 6)
end
