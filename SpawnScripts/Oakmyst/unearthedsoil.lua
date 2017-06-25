--[[
	Script Name	: SpawnScripts/Oakmyst/unearthedsoil.lua
	Script Purpose	: unearthed soil
	Script Author	: Scatman
	Script Date	: 2009.10.07
	Script Notes	: 
--]]

local OAKMYST_CHARLIN_QUEST_2 = 205

function spawn(NPC)
	SetRequiredQuest(NPC, OAKMYST_CHARLIN_QUEST_2, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end