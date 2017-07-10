function spawn(npc)
  local locations = {
{ 246.06, -49.26, -346.61, 1, 0},
{ 335.08, -49.23, -340.33, 1, 0},
{ 367.98, -49.23, -278.2, 1, 0},
{ 409.8, -49.23, -207.26, 1, 0},
{ 403.73, -49.22, -67.7, 1, 0},
{ 414.39, -49.23, -162.63, 1, 0},
{ 358.75, -49.23, -335.55, 1, 0},
{ 438.71, -49.23, -389.31, 1, 0},
{ 523.29, -49.23, -457.4, 1, 0},
{ 559.33, -49.23, -495.57, 1, 0},
{ 527.34, -49.23, -535.11, 1, 0},
{ 468.55, -49.23, -540.71, 1, 0},
{ 444.41, -49.23, -507.61, 1, 0},
{ 435.2, -49.23, -398.92, 1, 0},
{ 366.2, -49.23, -347.52, 1, 0},
{ 372.63, -49.23, -266.67, 1, 0},
{ 422.97, -49.23, -191.78, 1, 0},
{ 397.86, -49.23, -234.95, 1, 0},
{ 357.2, -49.23, -290.53, 1, 0},
{ 334.66, -49.23, -344.36, 1, 0},
{ 227.13, -49.23, -341.88, 1, 0}
  }

  for _, location in ipairs(locations) do
    MovementLoopAddLocation(npc, location[1], location[2], location[3], location[4], location[5], location[6], location[7], location[8], location[9], location[10], location[11], location[12], location[13], location[14], location[15], location[16], location[17], location[18], location[19], location[20], location[21])
  end

  for i = #locations - 1, 1, -1 do
    MovementLoopAddLocation(npc, location[i][1], location[i][2], location[i][3], location[i][4], location[i][5], location[i][6], location[i][7], location[i][8], location[i][9], location[i][10], location[i][11], location[i][12], location[i][13], location[i][14], location[i][15], location[i][16], location[i][17], location[i][18], location[i][19], location[i][20], location[i][21])
  end
end