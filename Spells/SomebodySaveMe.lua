function cast(Caster, Target)
  SpellHeal(Target, "Heal", GetMaxHP(Target), GetMaxHP(Target))
  SpellHeal(Target, "Power", GetMaxPower(Target), GetMaxPower(Target))
end