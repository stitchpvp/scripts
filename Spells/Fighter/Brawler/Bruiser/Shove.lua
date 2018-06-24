function cast(Caster, Target, MinDmg, MaxDmg)
  local roll = math.random(1, 100)
  
  if roll <= 40 then
    AddControlEffect(Target, 4)
  end
  
  ProcDamage(Caster, Target, "Shove", 1, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 4)
end