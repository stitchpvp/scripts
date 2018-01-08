--[[
	Script Name	  	:	SpawnScripts/Antonica/AvatarOfDisease.lua
	Script Purpose	:	Avatar of Disease
	Script Authors	:	Peak, Rixan
	Script Date		  :	2018
--]]

function spawn(NPC)
	SetHP(NPC, 500000)
	SetPower(NPC, 500000)
end

function respawn(NPC)
  spawn(NPC)
end

function attacked(NPC)
  Say(NPC, "A plague of suffering will be your only reward!")
  AddTimer(NPC, 5000, "second_sentence")
  AddTimer(NPC, 45000, "SpawnAdds")
end

function second_sentence(NPC)
  Say(NPC, "I will wrap you in a protective cloak of virulent disease, just to be fair.")
end

function SpawnAdds(NPC)
  TraumaticPoxule = GetSpawn(Spawn, 2520014)
  ArcanePoxule = GetSpawn(Spawn, 2520015)
  SpawnMob(GetZone(Spawn), TraumaticPoxule, false, 81.54, -8.64, 99.78, 90)
  SpawnMob(GetZone(Spawn), ArcanePoxule, false, 81.54, -8.64, 99.78, 90)
  AddTimer(NPC, 45000, "SpawnAdds")
end

function death(NPC, Spawn)
	KillSpawn(NPC, GetSpawn(Spawn, 2520014), 1)
	KillSpawn(NPC, GetSpawn(Spawn, 2520015), 1)
end