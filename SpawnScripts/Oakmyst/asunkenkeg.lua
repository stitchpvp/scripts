--[[
	Script Name	: SpawnScripts/Oakmyst/asunkenkeg.lua
	Script Purpose	: a sunken keg
	Script Author	: Scatman
	Script Date	: 2009.10.07
	Script Notes	: 
--]]

local DWARF_QUEST_FROM_MARV = 25

function spawn(NPC)
	SetRequiredQuest(NPC, DWARF_QUEST_FROM_MARV, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end