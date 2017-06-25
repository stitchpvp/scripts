--[[
	Script Name	: SpawnScripts/Caves/analabasterbehemoth.lua
	Script Purpose	: an alabaster behemoth 
	Script Author	: Scatman
	Script Date	: 2009.11.20
	Script Notes	: 
--]]

local MIN_TIME = 3000
local MAX_TIME = 10000

function spawn(NPC)
	local sli = GetSpawnLocationID(NPC)
	if sli == 147857 or sli == 147856 or sli == 147846 or sli == 147855 then
		AddTimer(NPC, math.random(MIN_TIME, MAX_TIME), "MakeAttack")
	end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function MakeAttack(NPC)
	PlayFlavor(NPC, "", "", "attack", 0, 0)
	AddTimer(NPC, math.random(MIN_TIME, MAX_TIME), "MakeAttack")
end

--[[
PlayFlavor(NPC, "voiceover/english/optional3/golem_base_1/ft/golem/golem_base_1_1_garbled_e0fead4d.mp3", "Pintoota kolata eldina mastarina", "", 2947217871, 3677590207)
PlayFlavor(NPC, "voiceover/english/optional5/golem_base_2/ft/golem/golem_base_2_1_garbled_48632408.mp3", "Boona vas kontrella", "", 3186320893, 862014285)
--]]