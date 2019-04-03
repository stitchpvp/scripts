function cast(Caster, Target, MinHeal2, MaxHeal2, MinHeal, MaxHeal)
  local hp_check = GetHP(Target) / GetMaxHP(Target)

  if hp_check > 0.50 then
    SpellHeal(Target, "Heal", MinHeal, MaxHeal)
  elseif hp_check <= 0.50 then
    SpellHeal(Target, "Heal", MinHeal2, MaxHeal2)
  end
end

function tick(Caster, Target, MinHeal2, MaxHeal2, MinHeal, MaxHeal)
  local hp_check = GetHP(Target) / GetMaxHP(Target)

  if hp_check > 0.50 then
    SpellHeal(Target, "Heal", MinHeal, MaxHeal)
  elseif hp_check <= 0.50 then
    SpellHeal(Target, "Heal", MinHeal2, MaxHeal2)
  end
end
