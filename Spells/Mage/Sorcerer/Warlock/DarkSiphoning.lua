function cast(Caster, Target, MinPowerDmg, MaxPowerDmg, MinDmg, MaxDmg, MinPowerHeal, MaxPowerHeal, MinHeal, MaxHeal)
--  SpellHeal(Target, "Power", -1 * MinPowerDmg, -1 * MaxPowerDmg)
--  SpellDamage(Target, 9, MinDmg, MaxDmg)
--  SpellHeal(Caster, "Power")
  SpellHeal(Target, "Power", -1000)
end

function tick()
  RemoveSpell()
end