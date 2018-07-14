function cast(Caster, Target, MinDmg, MaxDmg, Chance)
  SpellDamage(Target, 6, MinDmg, MaxDmg)
  Interrupt(Caster, Target)
  BlurVision(Target, 20.0)

  local roll = math.random(1, 100)
  if roll <= Chance then
    CastSpell(Target, 37041270, 1, Caster)
  end
end

function remove(Caster, Target)
  BlurVision(Target, 0.0)
end