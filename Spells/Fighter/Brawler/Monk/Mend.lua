function cast(Caster, Target, CureLevel, MinHeal, MaxHeal, MinTick, MaxTick)
  local base_hp = GetMaxHP(Caster) * 0.50
  local random = math.random(MinHeal, MaxHeal)
  local heal = base_hp + random

  CureByType(Target, CureLevel, 3)
  SpellHeal(Target, "Heal", heal)
end

function tick(Caster, Target, CureLevel, MinHeal, MaxHeal, MinTick, MaxTick)
  SpellHeal(Target, "Heal", MinTick, MaxTick)
end