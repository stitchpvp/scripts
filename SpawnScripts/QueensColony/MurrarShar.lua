--[[
	Script Name	: SpawnScripts/QueensColony/MurrarShar.lua
	Script Purpose	: Murrar Shar <Emissary of Queen Antonia Bayle>
	Script Author	: Zcoretri
	Script Date	: 2015.07.30
	Script Notes	:
--]]

function spawn(NPC)
    ProvidesQuest(NPC, 132)
end

function respawn(NPC)
SpawnMob(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    choice = math.random(1,3)
    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1036.mp3", "", "", 0, 0, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1036.mp3", "", "", 0, 0, Spawn)
    else
        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1036.mp3", "", "", 0, 0, Spawn)
    end

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar007.mp3", "", "", 4090368410, 193364605, Spawn)
    AddConversationOption(conversation, "Who are you?", "WhoAreYou")
    AddConversationOption(conversation, "I would prefer to leave the island now.", "LeaveIsland")
    AddConversationOption(conversation, "I will return after I look around a bit.")
    StartConversation(conversation, NPC, Spawn, "Welcome, " .. GetName(Spawn) .. ", I have been anticipating your arrival.  Your skills are greatly needed here at the Queen's Colony.")


end

function LeaveIsland(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Where can I find Captain Varlos?", "WhereCaptainVarlos")
    StartConversation(conversation, NPC, Spawn, "If you feel you are ready to leave the island you can do so at any time. We have an arrangement with Captain Varlos. He will take you to the fair city of Qeynos.")
end


function WhereCaptainVarlos(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Thank you.")
    StartConversation(conversation, NPC, Spawn, "Head through the south archway to the beach. Once there, you will find Varlos' ship on the dock. He should be aboard the ship. I hope you enjoy Qeynos, " .. GetName(Spawn) .. ".")
end

function WhoAreYou(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar001.mp3", "", "", 4276663740, 184288328, Spawn)
    AddConversationOption(conversation, "What is the purpose of this colony?", "PurposeColony")
    AddConversationOption(conversation, "We'll talk about this later.")
    StartConversation(conversation, NPC, Spawn, "I am Murrar Shar, General of the Royal Antonican Guard and prrrotector of Queen Antonia Bayle.")
end

function PurposeColony(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar002.mp3", "", "", 1723259718, 37401788, Spawn)
    AddConversationOption(conversation, "Tell me more about Qeynos.", "MoreAboutQeynos")
    AddConversationOption(conversation, "I'd like to get to work. How can I help you?", "HowCanHelp")
    AddConversationOption(conversation, "A pleasure to meet you, but I must go.")
    StartConversation(conversation, NPC, Spawn, "The Queen's Colony was established as a training ground for prospective citizens of Qeynos. Our great city needs valiant defenders.")
end

function MoreAboutQeynos(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar003.mp3", "", "", 490663804, 1186290249, Spawn)
    AddConversationOption(conversation, "Tell me more about Freeport.", "MoreAboutFreeport")
    AddConversationOption(conversation, "I'd rather not get into it.")
    StartConversation(conversation, NPC, Spawn, "Qeynos is a grand city that stands on the western shores of the continent Karan. It is a place where truth and justice are valued above all else. It is ruled by the brave and noble Queen Antonia Bayle. Our kingdom is a bright light that stands against the dark empire of Freeport.")
end

function MoreAboutFreeport(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar004.mp3", "", "", 920852811, 2210592101, Spawn)
    AddConversationOption(conversation, "I will do so. How can I be of service to the colony?", "HowCanHelp")
    AddConversationOption(conversation, "I'm not willing yet.")
    StartConversation(conversation, NPC, Spawn, "Freeport is a city of cruelty and malice, governed by its selfish Overlord, Lucan D'Lere. He is a dangerous madman who seeks to conquer Norrath and hold us all in his iron grip. Beware his lies, " .. GetName(Spawn) .. ".")
end

function HowCanHelp(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar005.mp3", "", "", 2129721282, 2945062289, Spawn)
    AddConversationOption(conversation, "I am ready to learn, Murrar.", "ReadyToLearn")
    AddConversationOption(conversation, "Not just now.")
    StartConversation(conversation, NPC, Spawn, "Ahh, your future is as bright as your heart, but there are perils in this world that only the mightiest of adventurers may overcome. Live for Qeynos and Qeynos will live for you!")
end

function ReadyToLearn(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/murrar_shar/tutorial_island02_revamp/quests/citizenship/murrarshar/murrarshar006.mp3", "", "", 3748435458, 1580349546, Spawn)
    AddConversationOption(conversation, "I will do as you ask.", "OfferQuest1")
    AddConversationOption(conversation, "I don't have time right now.")
    StartConversation(conversation, NPC, Spawn, "I am very glad to hear it! Go and speak to Trainer Hayl McGuinness, just northwest of here near the archway. I've written his name in your journal. He will teach you the basics of combat.")
end

--------------------------------------------------------------------------------------------------------------------
--                     OFFER QUESTS
--------------------------------------------------------------------------------------------------------------------
function OfferQuest1(NPC, Spawn)
    OfferQuest(NPC, Spawn, 132)
end
