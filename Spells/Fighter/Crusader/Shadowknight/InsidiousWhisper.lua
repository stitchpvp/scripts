function cast(Caster, Target, MinTaunt, MaxTaunt, MinTauntTick, MaxTauntTick, MinDmg, MaxDmg, MinDoT, MaxDoT)
  dmgAmount = math.random(MinDmg, MaxDmg)
  hateAmount = math.random(MinTaunt, MaxTaunt)
  
  AddHate(Caster, Target, hateAmount)
  SpellDamage(Target, 8, dmgAmount)

  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  end
end

function tick(Caster, Target, MinTaunt, MaxTaunt, MinTauntTick, MaxTauntTick, MinDmg, MaxDmg, MinDoT, MaxDoT)
  dmgAmount = math.random(MinDoT, MaxDoT)
  hateAmount = math.random(MinTauntTick, MaxTauntTick)

  AddHate(Caster, Target, hateAmount)
  SpellDamage(Target, 8, dmgAmount)

  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  end
end