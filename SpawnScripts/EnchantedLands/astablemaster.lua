--[[
	Script Name	: SpawnScripts/EnchantedLands/astablemaster.lua
	Script Purpose	: a stable master 
	Script Author	: Cynnar
	Script Date	: 2015.02.17
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if GetSpawnLocationID(NPC) == 106627 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like to travel.", "dlg_PlacesB")
		AddConversationOption(conversation, "I am fine staying here, thanks.")
		StartConversation(conversation, NPC, Spawn, "Greetings traveler, how can I assist you today?")
	elseif GetSpawnLocationID(NPC) == 106625 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like to travel.", "dlg_PlacesR")
		AddConversationOption(conversation, "I am fine staying here, thanks.")
		StartConversation(conversation, NPC, Spawn, "Greetings traveler, how can I assist you today?")
	elseif GetSpawnLocationID(NPC) == 106626 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like to travel.", "dlg_PlacesC")
		AddConversationOption(conversation, "I am fine staying here, thanks.")
		StartConversation(conversation, NPC, Spawn, "Greetings traveler, how can I assist you today?")
	elseif GetSpawnLocationID(NPC) == 106623 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like to travel.", "dlg_PlacesM")
		AddConversationOption(conversation, "I am fine staying here, thanks.")
		StartConversation(conversation, NPC, Spawn, "Greetings traveler, how can I assist you today?")
	elseif GetSpawnLocationID(NPC) == 106624 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like to travel.", "dlg_PlacesBB")
		AddConversationOption(conversation, "I am fine staying here, thanks.")
		StartConversation(conversation, NPC, Spawn, "Greetings traveler, how can I assist you today?")
	elseif GetSpawnLocationID(NPC) == 106628 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like to travel.", "dlg_PlacesG")
		AddConversationOption(conversation, "I am fine staying here, thanks.")
		StartConversation(conversation, NPC, Spawn, "Greetings traveler, how can I assist you today?")
	elseif GetSpawnLocationID(NPC) == 106629 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like to travel.", "dlg_PlacesGG")
		AddConversationOption(conversation, "I am fine staying here, thanks.")
		StartConversation(conversation, NPC, Spawn, "Greetings traveler, how can I assist you today?")
	end
	
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		AddConversationOption(conversation, "Goodbye")
		StartConversation(conversation, NPC, Spawn, "Some thieves have stolen all our horses, and unfortunately I cannot offer this service at this time.")
end

function dlg_PlacesB(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Rivervale.", "move_Rivervale")
	AddConversationOption(conversation, "Chomper's Pond.", "move_Chompers_Pond")
	AddConversationOption(conversation, "Misty Grove.", "move_Misty_Grove")
	AddConversationOption(conversation, "Bramblefoot Hills.", "move_Bramblefoot_Hills")
	AddConversationOption(conversation, "Goblin Pass.", "move_Goblin_Pass")
	AddConversationOption(conversation, "The Great Guard.", "move_Great_Guard")
	AddConversationOption(conversation, "I am fine staying here, thanks.")
	StartConversation(conversation, NPC, Spawn, "Where would you like to travel to?")
end

function dlg_PlacesR(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Bobick Village.", "move_Bobick_Village")
	AddConversationOption(conversation, "Chomper's Pond.", "move_Chompers_Pond")
	AddConversationOption(conversation, "Misty Grove.", "move_Misty_Grove")
	AddConversationOption(conversation, "Bramblefoot Hills.", "move_Bramblefoot_Hills")
	AddConversationOption(conversation, "Goblin Pass.", "move_Goblin_Pass")
	AddConversationOption(conversation, "The Great Guard.", "move_Great_Guard")
	AddConversationOption(conversation, "I am fine staying here, thanks.")
	StartConversation(conversation, NPC, Spawn, "Where would you like to travel to?")
end

function dlg_PlacesC(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Bobick Village.", "move_Bobick_Village")
	AddConversationOption(conversation, "Rivervale.", "move_Rivervale")
	AddConversationOption(conversation, "Misty Grove.", "move_Misty_Grove")
	AddConversationOption(conversation, "Bramblefoot Hills.", "move_Bramblefoot_Hills")
	AddConversationOption(conversation, "Goblin Pass.", "move_Goblin_Pass")
	AddConversationOption(conversation, "The Great Guard.", "move_Great_Guard")
	AddConversationOption(conversation, "I am fine staying here, thanks.")
	StartConversation(conversation, NPC, Spawn, "Where would you like to travel to?")
end

function dlg_PlacesM(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Bobick Village.", "move_Bobick_Village")
	AddConversationOption(conversation, "Rivervale.", "move_Rivervale")
	AddConversationOption(conversation, "Chomper's Pond.", "move_Chompers_Pond")
	AddConversationOption(conversation, "Bramblefoot Hills.", "move_Bramblefoot_Hills")
	AddConversationOption(conversation, "Goblin Pass.", "move_Goblin_Pass")
	AddConversationOption(conversation, "The Great Guard.", "move_Great_Guard")
	AddConversationOption(conversation, "I am fine staying here, thanks.")
	StartConversation(conversation, NPC, Spawn, "Where would you like to travel to?")
end

function dlg_PlacesBB(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Bobick Village.", "move_Bobick_Village")
	AddConversationOption(conversation, "Rivervale.", "move_Rivervale")
	AddConversationOption(conversation, "Chomper's Pond.", "move_Chompers_Pond")
	AddConversationOption(conversation, "Misty Grove.", "move_Misty_Grove")
	AddConversationOption(conversation, "Goblin Pass.", "move_Goblin_Pass")
	AddConversationOption(conversation, "The Great Guard.", "move_Great_Guard")
	AddConversationOption(conversation, "I am fine staying here, thanks.")
	StartConversation(conversation, NPC, Spawn, "Where would you like to travel to?")
end

function dlg_PlacesG(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Bobick Village.", "move_Bobick_Village")
	AddConversationOption(conversation, "Rivervale.", "move_Rivervale")
	AddConversationOption(conversation, "Chomper's Pond.", "move_Chompers_Pond")
	AddConversationOption(conversation, "Misty Grove.", "move_Misty_Grove")
	AddConversationOption(conversation, "Bramblefoot Hills.", "move_Bramblefoot_Hills")
	AddConversationOption(conversation, "The Great Guard.", "move_Great_Guard")
	AddConversationOption(conversation, "I am fine staying here, thanks.")
	StartConversation(conversation, NPC, Spawn, "Where would you like to travel to?")
end

function dlg_PlacesGG(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Bobick Village.", "move_Bobick_Village")
	AddConversationOption(conversation, "Rivervale.", "move_Rivervale")
	AddConversationOption(conversation, "Chomper's Pond.", "move_Chompers_Pond")
	AddConversationOption(conversation, "Misty Grove.", "move_Misty_Grove")
	AddConversationOption(conversation, "Bramblefoot Hills.", "move_Bramblefoot_Hills")
	AddConversationOption(conversation, "Goblin Pass.", "move_Goblin_Pass")
	AddConversationOption(conversation, "I am fine staying here, thanks.")
	StartConversation(conversation, NPC, Spawn, "Where would you like to travel to?")
end

function move_Bobick_Village(NPC, Spawn)
	SetPosition(Spawn, 27, -0.95, -9)
end

function move_Rivervale(NPC, Spawn)
    if GetSpawnLocationID(NPC) == 106627 then
        StartAutoMount(Spawn, 20)
        SetMount(Spawn, 6846)
    else
	    SetPosition(Spawn, -194, 3, -292)
	end
end

function move_Chompers_Pond(NPC, Spawn)
	SetPosition(Spawn, -186, -3.33, -605)
end

function move_Misty_Grove(NPC, Spawn)
	SetPosition(Spawn, -604, -0.94, -919)
end

function move_Bramblefoot_Hills(NPC, Spawn)
	SetPosition(Spawn, -224, 23.56, -994)
end

function move_Goblin_Pass(NPC, Spawn)
	SetPosition(Spawn, 159, 25.31, -777)
end

function move_Great_Guard(NPC, Spawn)
     if GetSpawnLocationID(NPC) == 106627 then
        StartAutoMount(Spawn, 21)
        SetMount(Spawn, 6846)
    else
	    SetPosition(Spawn, 303, 1.17, -244)
	end
end