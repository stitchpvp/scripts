function cast(caster, target)
  if IsPlayer(target) and HasItem(target, 6575) then
    RemoveItem(target, 6575)

    if GetZoneName(GetZone(target)) == "commonlands" then
      Zone(GetZone("antonica"), target, -2065.79, 13.12, -629.25)
    else if GetZoneName(GetZone(target) == "antonica" then
      Zone(GetZone("commonlands"), target, -12.64, -46.80, -417.97)
    end
end