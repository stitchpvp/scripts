function cast(Caster, Target, MinHeal, MaxHeal, MinHeal2, MaxHeal2)
  local hp_check = GetHP(Target) / GetMaxHP(Target)

  if hp_check > 0.50 then
    SpellHeal(Target, "Heal", MinHeal, MaxHeal)
  elseif hp_check <= 0.50 then
    SpellHeal(Target, "Heal", MinHeal2, MaxHeal2)
  end
end
