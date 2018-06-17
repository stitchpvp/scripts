function spawn(NPC)
  local speed = 2.0

  local locations = {
    {-27.36, 12.00, 20.39, speed, 0},
    {14.54, 12.00, 39.86, speed, 0},
  }

  for _, location in ipairs(locations) do
    MovementLoopAddLocation(NPC, location[1], location[2], location[3], location[4], location[5])
  end

  for i = #locations - 1, 1, -1 do
    MovementLoopAddLocation(NPC, locations[i][1], locations[i][2], locations[i][3], locations[i][4], locations[i][5])
  end
end
