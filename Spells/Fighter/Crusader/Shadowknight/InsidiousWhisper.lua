function cast(Caster, Target, MinTaunt, MaxTaunt, MinTauntTick, MaxTauntTick, MinDmg, MaxDmg)
  local hateAmount = math.random(MinTaunt, MaxTaunt)

  SpellDamage(Target, 8, MinDmg, MaxDmg)

  if IsPlayer(Target) then
    AddControlEffect(Target, 15)
    AddSpellTimer(2000, "remove_taunt_lock", Caster, Target)
    SetTarget(Target, Caster)
  else
    AddHate(Caster, Target, hateAmount, 1)
  end
end

function tick(Caster, Target, MinTaunt, MaxTaunt, MinTauntTick, MaxTauntTick, MinDmg, MaxDmg, TickDmg)
  local hateAmount = math.random(MinTauntTick, MaxTauntTick)

  AddHate(Caster, Target, hateAmount, 1)
  SpellDamage(Target, 8, TickDmg)
end

function remove_taunt_lock(Caster, Target)
  RemoveControlEffect(Target, 15)
end