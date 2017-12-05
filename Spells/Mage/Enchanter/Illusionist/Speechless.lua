function cast(Caster, Target, MinDmg, MaxDmg)
  AddControlEffect(Target, 2)

  SpellDamage(Target, 6, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 2)
end
