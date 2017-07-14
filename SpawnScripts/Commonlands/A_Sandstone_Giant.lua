function spawn(npc)
  local locations = {
    { 1224.44, -42.90, -285.92, 1.5, 0},
    { 1293.32, -59.24, -334.01, 1.5, 0},
    { 1306.31, -51.74, -286.80, 1.5, 0},
    { 1332.99, -40.47, -193.20, 1.5, 0},
    { 1397.10, -44.63, -95.63, 1.5, 0},
    { 1428.90, -42.28, 18.46, 1.5, 0},
    { 1449.89, -34.17, 69.01, 1.5, 0},
    { 1459.24, -31.71, 129.35, 1.5, 0},
    { 1451.22, -37.61, 38.30, 1.5, 0},
    { 1462.33, -39.51, 14.42, 1.5, 0},
    { 1435.18, -41.42, 20.53, 1.5, 0},
    { 1401.84, -50.29, -20.83, 1.5, 0},
    { 1429.83, -45.51, -75.60, 1.5, 0},
    { 1452.77, -38.61, -151.24, 1.5, 0},
    { 1449.12, -44.58, -249.07, 1.5, 0},
    { 1398.08, -36.17, -227.01, 1.5, 0},
    { 1350.84, -41.97, -260.38, 1.5, 0},
    { 1306.20, -56.29, -308.20, 1.5, 0},
    { 1302.86, -59.36, -338.96, 1.5, 0},
    { 1354.68, -53.13, -336.44, 1.5, 0},
    { 1380.48, -47.60, -313.77, 1.5, 0},
    { 1415.41, -44.49, -304.81 1.5, 0},
    { 1446.76, -45.44, -329.09, 1.5, 0},
    { 1445.91, -45.86, -294.60, 1.5, 0},
    { 1448.58, -44.59, -250.26, 1.5, 0},
    { 1408.56, -37.30, -228.82, 1.5, 0},
    { 1405.47, -35.74, -173.78, 1.5, 0},
    { 1448.45, -38.43, -141.29, 1.5, 0},
    { 1454.13, -39.84, -167.64, 1.5, 0},
    { 1449.13, -43.02, -221.63, 1.5, 0},
    { 1440.40, -45.78, -315.99, 1.5, 0},
    { 1416.81, -45.07, -308.65, 1.5, 0},
    { 1395.25, -42.57, -289.99, 1.5, 0},
    { 1383.70, -45.32, -299.39, 1.5, 0}
    { 1362.85, -51.76, -330.85, 1.5, 0},
    { 1329.43, -56.06, -340.57, 1.5, 0},
    { 1297.53, -59.08, -345.50, 1.5, 0},
    { 1254.04, -55.92, -363.33, 1.5, 0},
    { 1199.20, -43.93, -366.30, 1.5, 0},
    { 1172.19, -37.75, -352.52, 1.5, 0}
  }

  for _, location in ipairs(locations) do
    MovementLoopAddLocation(npc, location[1], location[2], location[3], location[4], location[5], location[6], location[7], location[8], location[9], location[10], location[11], location[12], location[13], location[14], location[15], location[16], location[17], location[18], location[19], location[20], location[21], location[22], location[23], location[24], location[25], location[26], location[27], location[28], location[29], location[30], location[31], location[32], location[33], location[34], location[35], location[36], location[37], location[38], location[39])
  end

  for i = #locations - 1, 1, -1 do
    MovementLoopAddLocation(npc, location[i][1], location[i][2], location[i][3], location[i][4], location[i][5], location[i][6], location[i][7], location[i][8], location[i][9], location[i][10], location[i][11], location[i][12], location[i][13], location[i][14], location[i][15], location[i][16], location[i][17], location[i][18], location[i][19], location[i][20], location[i][21], location[i][22], location[i][23], location[i][24], location[i][25], location[i][26], location[i][27], location[i][28], location[i][29], location[i][30], location[i][31], location[i][32], location[i][33], location[i][34], location[i][35], location[i][36], location[i][37], location[i][38], location[i][39])
  end
end


function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end