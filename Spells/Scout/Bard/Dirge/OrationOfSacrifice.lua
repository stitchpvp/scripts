function cast(Caster, Target, MinHeal, MaxHeal)
  SpellHeal(Target, "Heal", MinHeal, MaxHeal)
  AddControlEffect(Caster, 2)
end

function tick(Caster, Target, MinHeal, MaxHeal)
  SpellHeal(Target, "Heal", MinHeal, MaxHeal)
end

function remove(Caster, Target)
  RemoveControlEffect(Caster)
end