function cast(Caster, Target, MinDmg, MaxDmg, PowerHeal)
  local dmg_increase = 1 - (GetHP(Target) / GetMaxHP(Target))

  local adj_min = MinDmg + (MinDmg * dmg_increase)
  local adj_max = MaxDmg + (MaxDmg * dmg_increase)

  SpellDamage(Target, 9, adj_min, adj_max)
  SpellHeal(Caster, "Power", PowerHeal)
end
