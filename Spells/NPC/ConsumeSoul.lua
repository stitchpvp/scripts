function cast(Caster, Target)
  local hp = GetHP(Target)
  local number = math.random(1, 3)

  if number == 1 then
    local heal_amount = hp * 0.02

    SpellHeal(Target, "Heal", heal_amount)

  elseif number == 2 then
    local heal_amount = hp * 0.03

    SpellHeal(Target, "Heal", heal_amount)

  elseif number == 3 then
    local heal_amount = hp * 0.04

    SpellHeal(Target, "Heal", heal_amount)
  end
end