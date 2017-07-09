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
MovementLoopAddLocation(NPC, -414.06, -41.71, -329, 1, 5)
MovementLoopAddLocation(NPC, -419.15, -41.71, -326.77, 1, 0)
MovementLoopAddLocation(NPC, -431.92, -41.71, -322.05, 1, 0)
MovementLoopAddLocation(NPC, -453.2, -43.4, -312.08, 1, 0)
MovementLoopAddLocation(NPC, -471.25, -44.92, -303.45, 1, 0)
MovementLoopAddLocation(NPC, -487.18, -44.98, -295.9, 1, 0)
MovementLoopAddLocation(NPC, -504.91, -43.96, -288.55, 1, 0)
MovementLoopAddLocation(NPC, -526.49, -43.02, -279.59, 1, 0)
MovementLoopAddLocation(NPC, -527.83, -42.9, -278.18, 1, 0)
MovementLoopAddLocation(NPC, -524.15, -43.06, -275.91, 1, 0)
MovementLoopAddLocation(NPC, -511.54, -43.62, -283.28, 1, 0)
MovementLoopAddLocation(NPC, -502.52, -44.02, -287.16, 1, 0)
MovementLoopAddLocation(NPC, -487.29, -44.85, -293.36, 1, 0)
MovementLoopAddLocation(NPC, -462.61, -44.69, -303.83, 1, 0)
MovementLoopAddLocation(NPC, -441.41, -41.86, -313.84, 1, 0)
MovementLoopAddLocation(NPC, -420.7, -41.71, -323.99, 1, 0)
MovementLoopAddLocation(NPC, -410.98, -41.71, -328.92, 1, 0)
MovementLoopAddLocation(NPC, -410.82, -41.71, -329.38, 1, 0)
MovementLoopAddLocation(NPC, -417.12, -41.65, -329.39, 1, 0)
MovementLoopAddLocation(NPC, -430.26, -41.58, -323.48, 1, 0)
MovementLoopAddLocation(NPC, -445.79, -42.38, -315.72, 1, 0)
MovementLoopAddLocation(NPC, -464.36, -44.58, -307.7, 1, 0)
MovementLoopAddLocation(NPC, -482.23, -45.2, -299.34, 1, 0)
MovementLoopAddLocation(NPC, -486.86, -45.05, -297.18, 1, 0)
MovementLoopAddLocation(NPC, -478.16, -45.14, -282.28, 1, 0)
MovementLoopAddLocation(NPC, -473.95, -45.37, -276.95, 1, 0)
MovementLoopAddLocation(NPC, -482.01, -45.02, -295.56, 1, 0)
MovementLoopAddLocation(NPC, -474.92, -45, -301.51, 1, 0)
MovementLoopAddLocation(NPC, -461.63, -44.54, -304.86, 1, 0)
MovementLoopAddLocation(NPC, -448.93, -43.09, -310.06, 1, 0)
MovementLoopAddLocation(NPC, -423.25, -41.71, -322.36, 1, 0)
MovementLoopAddLocation(NPC, -415.83, -41.65, -325.52, 1, 0)
MovementLoopAddLocation(NPC, -411.85, -41.71, -329.81, 1, 0)
end
