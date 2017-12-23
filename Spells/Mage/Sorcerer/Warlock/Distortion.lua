function cast(Caster, Target, MinDmg, MaxDmg, PowerHeal)
  SpellDamage(Target, 9, MinDmg, MaxDmg)
  SpellHeal(Caster, "Power", PowerHeal)
end