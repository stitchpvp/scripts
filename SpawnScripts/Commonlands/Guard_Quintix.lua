function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
	local choice = math.random(1, 4)
	if choice == 1 then
    Say(NPC, "Do you have business with the Freeport Militia?", Spawn)
    PlayAnimation(NPC, 13056, Spawn, 1)
	elseif choice == 2 then
	  Say(NPC, "All praises to the Overloard. The Militia protects loyal citizens of Freeport.", Spawn)
    PlayAnimation(NPC, 10815, Spawn, 1)
  elseif choice == 3 then
    Say(NPC, "Do not challenge my authority, citizen. In Freeport, the Overlord's word is law!", Spawn)
    PlayAnimation(NPC, 11649, Spawn, 1)
  elseif choice == 4 then
    Say(NPC, "The Overlord commands me to patrol this area, and so I must.", Spawn)
    PlayAnimation(NPC, 10815, Spawn, 1)
  end
end

function spawn(NPC)
	waypoints(NPC)
end

function respawn(NPC)
end


function waypoints(NPC)
MovementLoopAddLocation(NPC, -570.9, -42.74, -256.61, 1, 1)
MovementLoopAddLocation(NPC, -563.52, -41.97, -260.08, 1, 1)
MovementLoopAddLocation(NPC, -556.18, -41.97, -263.54, 1, 1)
MovementLoopAddLocation(NPC, -548.58, -41.97, -267.13, 1, 1)
MovementLoopAddLocation(NPC, -538.93, -41.97, -271.67, 1, 1)
MovementLoopAddLocation(NPC, -529.79, -42.47, -275.98, 1, 1)
MovementLoopAddLocation(NPC, -520.35, -43.26, -280.42, 1, 1)
MovementLoopAddLocation(NPC, -509.54, -43.74, -285.52, 1, 1)
MovementLoopAddLocation(NPC, -498.99, -44.29, -290.49, 1, 1)
MovementLoopAddLocation(NPC, -488.2, -44.95, -295.58, 1, 1)
MovementLoopAddLocation(NPC, -480.34, -45.13, -299.28, 1, 1)
MovementLoopAddLocation(NPC, -470.66, -44.91, -303.84, 1, 1)
MovementLoopAddLocation(NPC, -463.5, -44.56, -307.21, 1, 1)
MovementLoopAddLocation(NPC, -457.66, -43.93, -309.52, 1, 1)
MovementLoopAddLocation(NPC, -451.59, -43.26, -311.92, 1, 1)
MovementLoopAddLocation(NPC, -442.19, -41.85, -315.64, 1, 1)
MovementLoopAddLocation(NPC, -434.99, -41.71, -318.49, 1, 1)
MovementLoopAddLocation(NPC, -424.34, -41.71, -322.7, 1, 1)
MovementLoopAddLocation(NPC, -416.32, -41.71, -325.87, 1, 1)
MovementLoopAddLocation(NPC, -399.86, -42.97, -334.71, 1, 1)
MovementLoopAddLocation(NPC, -401.81, -42.63, -333.91, 1, 1)
MovementLoopAddLocation(NPC, -412.43, -41.71, -328.63, 1, 1)
MovementLoopAddLocation(NPC, -429.49, -41.71, -320.74, 1, 1)
MovementLoopAddLocation(NPC, -444.45, -42.31, -313.84, 1, 1)
MovementLoopAddLocation(NPC, -456.15, -43.82, -309.14, 1, 1)
MovementLoopAddLocation(NPC, -468.35, -44.85, -304.37, 1, 1)
MovementLoopAddLocation(NPC, -483.67, -45.11, -297.42, 1, 1)
MovementLoopAddLocation(NPC, -494.63, -44.58, -292.45, 1, 1)
MovementLoopAddLocation(NPC, -505.53, -43.92, -287.5, 1, 1)
MovementLoopAddLocation(NPC, -519.63, -43.29, -281.11, 1, 1)
MovementLoopAddLocation(NPC, -529.43, -42.57, -276.67, 1, 1)
MovementLoopAddLocation(NPC, -543.62, -41.97, -270.23, 1, 1)
MovementLoopAddLocation(NPC, -558.25, -41.97, -263.59, 1, 1)
MovementLoopAddLocation(NPC, -575.35, -43.36, -255.03, 1, 1)
MovementLoopAddLocation(NPC, -578.67, -43.41, -253.51, 1, 1)
end