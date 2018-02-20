function dmg(Target, MinDmg, MaxDmg)
  SpellDamage(Target, 4, MinDmg, MaxDmg)

  if GetRaceType(Target) == 150 then
    SpellDamage(Target, 4, MinDmg, MaxDmg)
  end
end

function cast(Caster, Target, MinDmg, MaxDmg)
  dmg(Target, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg)
  dmg(Target, MinDmg, MaxDmg)
end
