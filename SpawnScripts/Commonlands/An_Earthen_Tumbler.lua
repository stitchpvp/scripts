function spawn(NPC)
  MovementChoice(NPC)
end

function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
end

function MovementChoice(NPC)
	local route = math.random(1,2)
	if route == 1 then
	    RouteOne(NPC)
	elseif route == 2 then
	    RouteTwo(NPC)
  end
end


function RouteOne(NPC)
local X = GetX(NPC)
local Y = GetY(NPC)
local Z = GetZ(NPC)
  MovementLoopAddLocation(NPC, X, Y, Z, 2, 1)
  MovementLoopAddLocation(NPC, X - 2, Y, Z + 20, 2,  math.random(2,10))
  MovementLoopAddLocation(NPC, X + 4, Y, Z + 31.5, 2, math.random(20,85))
  MovementLoopAddLocation(NPC, X + 15, Y, Z + 8, 2, math.random(2,10))
  MovementLoopAddLocation(NPC, X + 9, Y, Z - 15, 2, math.random(2,10))
  MovementLoopAddLocation(NPC, X - 7, Y, Z - 20, 2, math.random(2,10))
  MovementLoopAddLocation(NPC, X - 3, Y, Z - 17, 2, math.random(2,10))
  MovementLoopAddLocation(NPC, X - 6, Y, Z - 20, 2, math.random(20,85))
  MovementLoopAddLocation(NPC, X - 7, Y, Z - 2, 2, math.random(20,85))
  MovementLoopAddLocation(NPC, X + 20, Y, Z + 60, 2, math.random(20,85))
  MovementLoopAddLocation(NPC, X - 16, Y, Z + 30, 2, math.random(20,85))
  MovementLoopAddLocation(NPC, X - 16, Y, Z - 7, 2, math.random(20,85))
  MovementLoopAddLocation(NPC, X + 18, Y, Z - 23, 2, math.random(20,85))
  MovementLoopAddLocation(NPC, X - 18, Y, Z - 70, 2, math.random(20,85))
end

function RouteTwo(NPC)
local X = GetX(NPC)
local Y = GetY(NPC)
local Z = GetZ(NPC)
  MovementLoopAddLocation(NPC, X, Y, Z, 2, 1)
  MovementLoopAddLocation(NPC, X + 2, Y, Z - 20, 2,  math.random(2,10))
  MovementLoopAddLocation(NPC, X - 4, Y, Z - 31.5, 2, math.random(20,85))
  MovementLoopAddLocation(NPC, X - 15, Y, Z - 8, 2, math.random(2,10))
  MovementLoopAddLocation(NPC, X - 9, Y, Z + 15, 2, math.random(2,10))
  MovementLoopAddLocation(NPC, X + 7, Y, Z + 20, 2, math.random(2,10))
  MovementLoopAddLocation(NPC, X + 3, Y, Z + 17, 2, math.random(2,10))
  MovementLoopAddLocation(NPC, X + 6, Y, Z + 20, 2, math.random(20,85))
  MovementLoopAddLocation(NPC, X + 7, Y, Z + 2, 2, math.random(20,85))
  MovementLoopAddLocation(NPC, X - 20, Y, Z - 60, 2, math.random(20,85))
  MovementLoopAddLocation(NPC, X + 16, Y, Z - 30, 2, math.random(20,85))
  MovementLoopAddLocation(NPC, X + 16, Y, Z + 7, 2, math.random(20,85))
  MovementLoopAddLocation(NPC, X - 18, Y, Z + 23, 2, math.random(20,85))
  MovementLoopAddLocation(NPC, X + 18, Y, Z + 70, 2, math.random(20,85))
end
