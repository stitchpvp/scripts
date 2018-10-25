function cast(Caster, Target, ItemID)
  if not HasItem(Target, ItemID) then
    SummonItem(Target, ItemID)
  else
    SendMessage(Caster, "" .. GetName(Target) .. " already have the summoned item.", "yellow")
  end
end
