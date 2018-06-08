function cast(Caster, Target, MinTaunt, MaxTaunt, MinTauntTick, MaxTauntTick, MinDmg, MaxDmg)
  local hateAmount = math.random(MinTaunt, MaxTaunt)

  AddHate(Caster, Target, hateAmount)
  SpellDamage(Target, 8, MinDmg, MaxDmg)

  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  end
end

function tick(Caster, Target, MinTaunt, MaxTaunt, MinTauntTick, MaxTauntTick, MinDmg, MaxDmg, TickDmg)
  local hateAmount = math.random(MinTauntTick, MaxTauntTick)

  AddHate(Caster, Target, hateAmount)
  SpellDamage(Target, 8, TickDmg)

  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  end
end
