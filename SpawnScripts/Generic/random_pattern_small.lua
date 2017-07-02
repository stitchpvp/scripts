--[[
	Script Name	: SpawnScripts/Generic/random_pattern_small.lua
	Script Purpose	: chooses a random route of a particular pattern
	Script Author	: theFoof
	Script Date	: 2013.5.16
	Script Notes	: If the coords are out of bounds then the spawn will still go there.
--]]
function spawn(NPC)
    MovementChoice(NPC)
end

function MovementChoice(NPC)
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
    MovementLoopAddLocation(NPC, X + 4, Y, Z, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X + 4, Y, Z + 4, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X + 7, Y, Z, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X + 4, Y, Z + 4, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(20,45))
end

function RouteTwo(NPC)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
    MovementLoopAddLocation(NPC, X - 4, Y, Z, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X - 4, Y, Z - 4, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X - 7, Y, Z, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X - 4, Y, Z - 4, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(20,45))
end

function RouteThree(NPC)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
	MovementLoopAddLocation(NPC, X + 4, Y, Z, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X + 4, Y, Z - 4, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X + 7, Y, Z, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X + 4, Y, Z - 4, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(20,45))
end

function RouteFour(NPC)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
	MovementLoopAddLocation(NPC, X - 4, Y, Z, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X - 4, Y, Z + 4, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X - 7, Y, Z, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X - 4, Y, Z + 4, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(20,45))
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end