function cast(Caster, Target)
  AddControlEffect(Target, 2)
  AddControlEffect(Target, 3)
  AddControlEffect(Target, 4)
  AddControlEffect(Target, 5)
  SetIllusion(Target, 212)
end

function remove(Caster, Target)
  local Tunare = GetSpawn(Target, 2520001)
  local Tunare_heal = GetMaxHP(Tunare) * 0.05
  RemoveControlEffect(Target, 2)
  RemoveControlEffect(Target, 3)
  RemoveControlEffect(Target, 4)
  RemoveControlEffect(Target, 5)
  SetIllusion(Target, 0)

  if Tunare ~= nil and not SpellWasCured(Target) then
    CastSpell(Target, 57868531, 1, Tunare)
    SpellHeal(Tunare, "Curse of Tunare", Tunare_heal)
  end
end
