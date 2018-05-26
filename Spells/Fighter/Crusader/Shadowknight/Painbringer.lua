function cast(Caster, Target, MinHeal, MaxHeal, MinHealTick, MaxHealTick, MinDmg, MaxDmg, TickDmg)
  local DamageType = GetWeaponDamageType(Caster)

  SpellDamage(Target, DamageType, MinDmg, MaxDmg)
  SpellHeal(Caster, "Heal", MinHeal, MaxHeal)
end

function tick(Caster, Target, MinHeal, MaxHeal, MinHealTick, MaxHealTick, MinDmg, MaxDmg, TickDmg)
  SpellDamage(Target, 8, TickDmg)
  SpellHeal(Caster, "Heal", MinHealTick, MaxHealTick)
end
