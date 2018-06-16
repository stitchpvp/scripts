function spawn(NPC)
  local speed = 7.5

  local locations = {
    {-20.50, 0.26, 70.9, speed, 0},
    {-16.14, 1.32, 82.34, speed, 0},
    {-10.61, 3.10, 86.50, speed, 0},
    {-8.01, 6.27, 95.96, speed, 0},
    {13.18, 7.24, 101.06, speed, 0},
    {14.76, 8.48, 109.43, speed, 0},
    {12.75, 9.90, 119.35, speed, 0},
    {-11.28, 14.34, 131.49, speed, 0}
  }

  for _, location in ipairs(locations) do
    MovementLoopAddLocation(npc, location[1], location[2], location[3], location[4], location[5])
  end

  for i = #locations - 1, 1, -1 do
    MovementLoopAddLocation(npc, locations[i][1], locations[i][2], locations[i][3], locations[i][4], locations[i][5])
  end
end
