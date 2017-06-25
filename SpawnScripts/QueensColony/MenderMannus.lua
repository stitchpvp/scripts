--[[
    Script Name    : SpawnScripts/QueensColony/MenderMannus.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Mender Mannus dialog
                   : 
--]]

function spawn(NPC)

end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1002.mp3", "", "", 0, 0, Spawn)
    AddConversationOption(conversation, "Thanks, I will do so.")
    StartConversation(conversation, NPC, Spawn, "Hello there, " ..GetName(Spawn).. ". Menders like me repair your equipment after it is damaged due to death. For more information on repairs, speak to Trainer Zidget Sprogrudder nearby. I'll fix your gear for a small fee, but menders in Qeynos won't be quite so generous!")
end