function spawn(npc)
  local locations = {
    { 246.06, -50.26, -346.61, 1.5, 0},
    { 335.08, -50.23, -340.33, 1.5, 0},
    { 367.98, -50.23, -278.2, 1.5, 0},
    { 409.8, -50.23, -207.26, 1.5, 0},
    { 403.73, -50.22, -67.7, 1.5, 0},
    { 414.39, -50.23, -162.63, 1.5, 0},
    { 358.75, -50.23, -335.55, 1.5, 0},
    { 438.71, -50.23, -389.31, 1.5, 0},
    { 523.29, -50.23, -457.4, 1.5, 0},
    { 559.33, -50.23, -495.57, 1.5, 0},
    { 527.34, -50.23, -535.11, 1.5, 0},
    { 468.55, -50.23, -540.71, 1.5, 0},
    { 444.41, -50.23, -507.61, 1.5, 0},
    { 435.2, -50.23, -398.92, 1.5, 0},
    { 366.2, -50.23, -347.52, 1.5, 0},
    { 372.63, -50.23, -266.67, 1.5, 0},
    { 422.97, -50.23, -191.78, 1.5, 0},
    { 397.86, -50.23, -234.95, 1.5, 0},
    { 357.2, -50.23, -290.53, 1.5, 0},
    { 334.66, -50.23, -344.36, 1.5, 0},
    { 227.13, -50.23, -341.88, 1, 5}
  }

  for _, location in ipairs(locations) do
    MovementLoopAddLocation(npc, location[1], location[2], location[3], location[4], location[5], location[6], location[7], location[8], location[9], location[10], location[11], location[12], location[13], location[14], location[15], location[16], location[17], location[18], location[19], location[20], location[21])
  end

  for i = #locations - 1, 1, -1 do
    MovementLoopAddLocation(npc, location[i][1], location[i][2], location[i][3], location[i][4], location[i][5], location[i][6], location[i][7], location[i][8], location[i][9], location[i][10], location[i][11], location[i][12], location[i][13], location[i][14], location[i][15], location[i][16], location[i][17], location[i][18], location[i][19], location[i][20], location[i][21])
  end
end