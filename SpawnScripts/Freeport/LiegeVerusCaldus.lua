function spawn(NPC)
  waypoints(NPC)
end

function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
  local locations = {
    { 178.08, -3.85, -65.53, 2, 10},
    { 97.24, -19.27, -7.64, 2, 0},
    { 68.26, -20.23, 6.88, 2, 10}
  }

  for _, location in ipairs(locations) do
    MovementLoopAddLocation(NPC, location[1], location[2], location[3], location[4], location[5])
  end

  for i = #locations - 1, 1, -1 do
    MovementLoopAddLocation(NPC, locations[i][1], locations[i][2], locations[i][3], locations[i][4], locations[i][5])
  end
end