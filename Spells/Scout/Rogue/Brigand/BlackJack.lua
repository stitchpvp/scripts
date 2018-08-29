function cast(Caster, Target, MinDmg, MaxDmg)
  AddControlEffect(Target, 5)
  AddControlEffect(Target, 16)
  SetServerControlFlag(Target, 1, 16, 1)
  SpellDamage(Target, 1, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  SetServerControlFlag(Target, 1, 16, 0)
end
