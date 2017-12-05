
function spawn(NPC)
  AddPathing(NPC)
end

function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
end

function AddPathing(NPC)
	local route = math.random(1,4)
	if route == 1 then
	    RouteOne(NPC)
	elseif route == 2 then
	    RouteTwo(NPC)
	elseif route == 3 then
	    RouteThree(NPC)
	elseif route == 4 then
	    RouteFour(NPC)
	end
end


function RouteOne(NPC)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 4.5, math.random(2,6))
    MovementLoopAddLocation(NPC, X + 30, Y, Z, 4.5, math.random(2,6))
	MovementLoopAddLocation(NPC, X + 30, Y, Z + 30, 4.5, math.random(6,9))
	MovementLoopAddLocation(NPC, X + 18, Y, Z, 4.5, math.random(2,5))
	MovementLoopAddLocation(NPC, X + 30, Y, Z + 30, 4.5, math.random(2,6))
	MovementLoopAddLocation(NPC, X, Y, Z, 3.5, math.random(2,6))
end

function RouteTwo(NPC)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 4.5, math.random(2,6))
    MovementLoopAddLocation(NPC, X - 30, Y, Z, 4.5, math.random(6,9))
	MovementLoopAddLocation(NPC, X - 30, Y, Z - 30, 4.5, math.random(6,9))
	MovementLoopAddLocation(NPC, X - 18, Y, Z, 4.5, math.random(2,6))
	MovementLoopAddLocation(NPC, X - 30, Y, Z - 30, 4.5, math.random(2,6))
	MovementLoopAddLocation(NPC, X, Y, Z, 3.5, math.random(6,9))
end

function RouteThree(NPC)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 4.5, math.random(2,6))
	MovementLoopAddLocation(NPC, X + 30, Y, Z, 4.5, math.random(6,9))
	MovementLoopAddLocation(NPC, X + 30, Y, Z - 30, 4.5, math.random(2,6))
	MovementLoopAddLocation(NPC, X + 18, Y, Z, 4.5, math.random(2,6))
	MovementLoopAddLocation(NPC, X + 30, Y, Z - 30, 4.5, math.random(6,9))
	MovementLoopAddLocation(NPC, X, Y, Z, 4.5, math.random(2,6))
end

function RouteFour(NPC)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 4.8, math.random(2,6))
	MovementLoopAddLocation(NPC, X - 30, Y, Z, 4.8, math.random(6,9))
	MovementLoopAddLocation(NPC, X - 30, Y, Z + 30, 4.8, math.random(2,6))
	MovementLoopAddLocation(NPC, X - 18, Y, Z, 4.8, math.random(6,9))
	MovementLoopAddLocation(NPC, X - 30, Y, Z + 30, 4.8, math.random(2,6))
	MovementLoopAddLocation(NPC, X, Y, Z, 4.8, math.random(2,6))
end
