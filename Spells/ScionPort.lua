function cast(caster, target)
  if IsPlayer(target) and HasItem(target, 6575) then
    RemoveItem(target, 6575)
    Zone(GetZone(12), target, -2065.79, 13.12, -629.25)
  end
end