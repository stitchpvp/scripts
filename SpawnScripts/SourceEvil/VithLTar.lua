--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 15, "InRange")
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	--if HasQuest(Spawn, 31) and GetQuestStep(Spawn, 31) == 6) then
		TestMob1 = GetSpawn(Spawn, 2540004)
		TestMob2 = GetSpawn(Spawn, 2540005)
		if TestMob1 == nil and TestMob2 == nil then
			Say(NPC, "Remember any of these? Maybe they were your friends.")
	
			Mob1 = math.random(1, 2)
			Mob2 = math.random(1, 2)
			SpawnID1 = 2540005
			SpawnID2 = 2540005
	
			if Mob1 == 1 then
				SpawnID1 = 2540004
			end
	
			if Mob2 == 1 then
				SpawnID2 = 2540004
			end
		
			SpawnMob(GetZone(Spawn), SpawnID1, false, 6.82, 0, 2.28, 90)
			SpawnMob(GetZone(Spawn), SpawnID2, false, 7.16, 0, -1.10, 90)
		end
	--end
end

function CheckLastTotem(NPC, Spawn)
	Totem = GetSpawn(NPC, 2540010)
	if Totem == nil then
		Say(NPC, "Quite a nuisance you are. My patience is gone, prepare for my wrath!")
		AddTimer(NPC, 3000, "MakeVithAttackable")
	end
end

function MakeVithAttackable(NPC, Spawn)
	Say(NPC, "Now rot like your friends!")
	SpawnMob(GetZone(NPC), 2540007, false, 6.82, 0, 7.11, 13.41)
	SpawnMob(GetZone(NPC), 2540007, false, 7.15, 0, -6.59, 156.07)
	SpawnSet(NPC, "attackable", 1)
	SpawnSet(NPC, "show_level", 1)
	SpawnSet(NPC, "targetable", 1)
	SpawnSet(NPC, "visual_state", 0)
	SpawnSet(NPC, "faction_id", 1)
end