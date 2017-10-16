function cast(Caster, Target,MinDmg, MaxDmg, HateAmt, TickHateAmt)
  AddHate(Caster, Target, HateAmt, 1)
  SpellDamage(Target, 1, MinDmg, MaxDmg)

  CastSpell(Target, 1001532, 1, Caster)

  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  end
end

function tick(Caster, Target, MinDmg, MaxDmg, HateAmt, TickHateAmt)
  AddHate(Caster, Target, TickHateAmt, 1)

  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  end
end
