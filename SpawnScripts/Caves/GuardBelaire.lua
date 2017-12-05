--[[
	Script Name	: SpawnScripts/Caves/GuardBelaire.lua
	Script Purpose	: Guard Belaire <Guard>
	Script Author	: Scatman
	Script Date	: 2009.10.08
	Script Notes	:
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
end

function respawn(NPC)
SpawnMob(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericGuardHail(NPC, Spawn)
end
