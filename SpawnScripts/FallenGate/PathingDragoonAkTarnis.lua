function spawn(npc)
  local speed = 1.5
  local locations = {
    {-1.29, 0.00, -34.55, speed, 5},
    {-20.95, 0.00, -30.61, speed, 0},
    {-26.14, 0.00, -22.88, speed, 0},
    {-26.48, 0.00, -12.92, speed, 0},
    {-23.11, 0.00, 5.85, speed, 0},
    {-22.66, 0.00, 6.08, speed, 5}
  }

  for _, location in ipairs(locations) do
    MovementLoopAddLocation(npc, location[1], location[2], location[3], location[4], location[5])
  end

  for i = #locations - 1, 1, -1 do
    MovementLoopAddLocation(npc, locations[i][1], locations[i][2], locations[i][3], locations[i][4], locations[i][5])
  end
end