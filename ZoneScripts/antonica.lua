--[[
	Script Name		:	antonica.lua
	Script Purpose	:	Handles events in Antonica
	Script Author	:	Jabantiz
	Script Date		:	6/16/2016
	Script Notes	:	<special-instructions>
--]]

function init_zone_script(zone)
	SetLocationProximityFunction(zone, -2128.93, -28.4328, 614.081, 10, "GriffonTower", "Leave")  -- Steppes Station
	SetLocationProximityFunction(zone, -904.472, -7.23051, -610.321, 10, "GriffonTower", "Leave")  -- Oracle Tower Station
	SetLocationProximityFunction(zone, 337.246, -17.3142, 537.882, 10, "GriffonTower", "Leave")  -- South Qeynos Station
end

function player_entry(zone, player)
end

function enter_location(zone, spawn, grid)
end

function leave_location(zone, spawn, grid)
end

function dawn(zone)
end

function dusk(zone)
end

function GriffonTower(zone, Spawn)
	if IsPlayer(Spawn) and IsOnAutoMount(Spawn) then
		EndAutoMount(Spawn)
	end
end

function Leave(zone, Spawn)
end