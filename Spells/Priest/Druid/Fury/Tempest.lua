function cast(Caster, Target, MinDmg, MaxDmg)
  dmg(Target, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg)
  dmg(Target, MinDmg, MaxDmg)
end

function dmg(Target, MinDmg, MaxDmg)
  SpellDamage(Target, 4, math.random(MinDmg, MaxDmg))

  if GetRaceType(Target) == 150 then
    SpellDamage(Target, 4, math.random(MinDmg, MaxDmg))
  end
end
