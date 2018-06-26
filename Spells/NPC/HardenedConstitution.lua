function cast(Caster, Target)
  local Level = GetLevel(Caster)
  local BaseBonus = math.ceil(Level / 2)

  AddSpellBonus(Caster, 1, 60.5) --sta
  AddSpellBonus(Caster, 500, BaseBonus * 25) -- max hp
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
end