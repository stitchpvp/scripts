function cast(Caster, Target, MinDmg, MaxDmg, HateAmt)
  AddHate(Caster, Target, HateAmt, 1)
  SpellDamage(Target, 1, MinDmg, MaxDmg)

  CastSpell(Target, 181890697, 1, Caster)

  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  end
end
