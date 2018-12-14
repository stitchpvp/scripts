function cast(Caster, Target, Damage)
  SpellDamage(Target, 9, Damage, Damage)
end

function tick(Caster, Target, Damage)
 local triggers = GetSpellTriggerCount()

  if triggers == 0 then
    Damage = Damage * 0.1
    SpellDamage(Target, 9, Damage, Damage)
    SetSpellTriggerCount(1, 1)
  elseif triggers == 1 then
    Damage = Damage * 0.2
    SpellDamage(Target, 9, Damage, Damage)
    SetSpellTriggerCount(2, 1)
  elseif triggers == 2 then
    Damage = Damage * 0.2
    SpellDamage(Target, 9, Damage, Damage)
    SetSpellTriggerCount(3, 1)
  elseif triggers == 3 then
    Damage = Damage * 0.3
    SpellDamage(Target, 9, Damage, Damage)
  end
end
