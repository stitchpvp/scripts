function cast(Caster, Target, MinDmg, MaxDmg)
  AddControlEffect(Target, 5)
  SetServerControlFlag(Target, 1, 16, 1)
  SpellDamage(Target, 1, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 5)
  SetServerControlFlag(Target, 1, 16, 0)
end