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
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
    MovementLoopAddLocation(NPC, X + 8, Y, Z, 2, math.random(2,10))
	MovementLoopAddLocation(NPC, X + 8, Y, Z + 8, 2, math.random(20,85))
	MovementLoopAddLocation(NPC, X + 10, Y, Z, 2, math.random(2,10))
	MovementLoopAddLocation(NPC, X + 8, Y, Z + 8, 2, math.random(2,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
end

function RouteTwo(NPC)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
    MovementLoopAddLocation(NPC, X - 8, Y, Z, 2, math.random(20,85))
	MovementLoopAddLocation(NPC, X - 8, Y, Z - 8, 2, math.random(20,85))
	MovementLoopAddLocation(NPC, X - 10, Y, Z, 2, math.random(2,10))
	MovementLoopAddLocation(NPC, X - 8, Y, Z - 8, 2, math.random(2,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(20,85))
end

function RouteThree(NPC)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
	MovementLoopAddLocation(NPC, X + 8, Y, Z, 2, math.random(20,85))
	MovementLoopAddLocation(NPC, X + 8, Y, Z - 8, 2, math.random(2,10))
	MovementLoopAddLocation(NPC, X + 10, Y, Z, 2, math.random(2,10))
	MovementLoopAddLocation(NPC, X + 8, Y, Z - 8, 2, math.random(20,85))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
end

function RouteFour(NPC)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
	MovementLoopAddLocation(NPC, X - 8, Y, Z, 2, math.random(20,85))
	MovementLoopAddLocation(NPC, X - 8, Y, Z + 8, 2, math.random(2,10))
	MovementLoopAddLocation(NPC, X - 10, Y, Z, 2, math.random(20,85))
	MovementLoopAddLocation(NPC, X - 8, Y, Z + 8, 2, math.random(2,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
end
