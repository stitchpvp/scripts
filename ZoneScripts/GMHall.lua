--[[
	Script Name	: ZoneScripts/GMHall.lua
	Script Purpose	: Announce locations
	Script Author	: John Adams
	Script Date	: 2009.05.07
	Script Notes	: Sample ZoneScript
--]]

function init_zone_script(Zone)
	SetLocationProximityFunction(Zone, 670, -36, 1490, 10, "GMHall_InRange")
	SetLocationProximityFunction(Zone, 650, -35, 1580, 30, "Tess_InRange")
	SetLocationProximityFunction(Zone, 760, -35, 1475, 30, "Housing_InRange")
end

function GMHall_InRange(Zone, Player)
	SendPopUpMessage(Player, "Entrance to the Game Masters Hall", 255, 255, 0)
end

function Tess_InRange(Zone, Player)
	SendPopUpMessage(Player, "GM Tess's Platform", 255, 255, 0)
end

function Housing_InRange(Zone, Player)
	SendPopUpMessage(Player, "Housing Item Test Site", 255, 255, 0)
end
