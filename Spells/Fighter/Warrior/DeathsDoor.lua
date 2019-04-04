function cast(Caster, Target)
  local hp = GetMaxHP(Caster)
  SpellHeal(Caster, "Heal", hp, hp, 2, 1)
end

function remove(Caster, Target)
  CastSpell(Caster, 35360294, 1)
end
