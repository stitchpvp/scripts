--[[
    Script Name    : SpawnScripts/QueensColony/PaulaMarx.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Paula Marx dialog
                   :
--]]


function spawn(NPC)

    MovementLoopAddLocation(NPC, 5.65, -6.50, 208.26, 2, 10, "Gather")

    MovementLoopAddLocation(NPC, 0.71, -5.83, 198.18, 2, 10, "Gather")

    MovementLoopAddLocation(NPC, 10.66, -6.90, 200.55, 2, 10, "Gather")

    MovementLoopAddLocation(NPC, 18.65, -6.87, 194.36, 2, 10, "Gather")

    MovementLoopAddLocation(NPC, 26.80, -6.86, 187.05, 2, 10, "Gather")

    MovementLoopAddLocation(NPC, 31.08, -6.24, 197.45, 2, 10, "Gather")

    MovementLoopAddLocation(NPC, 9.11, -6.80, 206.29, 2, 10, "Gather")

    -- return to spawn point and hang out.
    MovementLoopAddLocation(NPC, -6.18, -4.96, 218.46, 2, 0)
    MovementLoopAddLocation(NPC, -5.91, -4.96, 218.24, 2, 30)
end

function respawn(NPC)
spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    --if (player has a collection then add a convesation option to hand in a collection
    --end
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1003.mp3", "", "", 0, 0, Spawn)
    AddConversationOption(conversation, "I don't have any at the moment.")
    StartConversation(conversation, NPC, Spawn, "Hello there!  If you have any collections that you've completed, I can take them off your hands and reward you for your time.  I'm just crazy for collections!")
end

function Gather(NPC)
    GatherSpawn = GetSpawn(NPC, 2530009)		-- Get Paula Marx
    SpawnSet(GatherSpawn, "visual_state", "2809")	-- Start gathering
    AddTimer(NPC, 5000, "stop_gathering")		-- for 5 seconds, then stop
end

function stop_gathering(NPC)
    GatherSpawn = GetSpawn(NPC, 2530009)		-- get Paula Marx
    SpawnSet(GatherSpawn, "visual_state", "0") 	-- Stop her from gathering
end
