function cast(Caster, Target, MinHeal, MaxHeal, Percentage)
  local base_hp = GetMaxHP(Caster) * Percentage
  local random = math.random(MinHeal, MaxHeal)
  local heal = base_hp + random

  SpellHeal(Target, "Heal", heal)
end