--[[
	Script Name	: SpawnScripts/Darklight/TrainerZaktarDZheVirae.lua
	Script Purpose	: Trainer Zaktar D'Zhe'Virae <Harvesting and Collections>
	Script Author	: John Adams
	Script Date	: 2009.01.31
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1048.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'd like to learn about collections.", "dlg_1_1")
	AddConversationOption(conversation, "I'd like to learn about harvesting.")
	AddConversationOption(conversation, "I've no time to chat right now.")
	StartConversation(conversation, NPC, Spawn, "I am able to answer any questions you have about collections or harvesting.")
	if convo==4 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1048.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'd like to learn about collections.", "dlg_4_1")
		AddConversationOption(conversation, "I'd like to learn about harvesting.")
		AddConversationOption(conversation, "I've no time to chat right now.")
		StartConversation(conversation, NPC, Spawn, "I am able to answer any questions you have about collections or harvesting.")
	end

	if convo==5 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1048.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'd like to learn about collections.", "dlg_5_1")
		AddConversationOption(conversation, "I'd like to learn about harvesting.")
		AddConversationOption(conversation, "I've no time to chat right now.")
		StartConversation(conversation, NPC, Spawn, "I am able to answer any questions you have about collections or harvesting.")
	end

end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What happens next?", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "Collectibles are seen as a glow rising from the ground. If you're close enough, you'll notice a question mark above it. Double-click or right-click the glow and select 'harvest.' The item you gather will go into your inventory. You can examine this item in your inventory.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I complete the collection?", "dlg_1_3")
	StartConversation(conversation, NPC, Spawn, "Your quest journal will open up automatically to the Collections tab. Use the Add button to add that item to a collection. As you travel through Norrath, you'll find different collectibles in different areas of the world. Some items can be part of more than one collection.")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'd like to learn about harvesting and gathering now.", "dlg_1_4")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "Continue to gather and examine all the items you find until all the icons of that collection are highlighted in your quest journal. Then you'll be able to turn the completed collection in to a collector who will reward you with some experience. If you already have a collectible in all collections that call for it, you can sell it to a merchant or trade it to another player.")
end

function dlg_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What are harvestables used for?", "dlg_1_5")
	StartConversation(conversation, NPC, Spawn, "Harvestables come in five forms, each tied to its own respective skill. These skills can be seen by opening your Skills window by pressing the P key, clicking on the Skills tab and selecting your General skills. Rocks increase mining, logs increase foresting, dens increase trapping, fish increase fishing, and plants increase gathering.")
end

function dlg_1_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Why do I need to increase my harvesting skills?", "dlg_1_6")
	StartConversation(conversation, NPC, Spawn, "The items found through harvesting are the basic building blocks of tradeskills.  They cannot be sold to vendors, but they can be traded or sold to other players who need them for their respective tradeskill professions.  Some components that can be found through harvesting are very rare and can be worth quite a bit of money to tradeskillers.")
end

function dlg_1_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'd like to learn about collections now.", "dlg_1_7")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "The skill required to harvest in a given area increases along with the difficulty of the area.  If you find that you are unable to harvest in an area you should return to a less difficult area and practice.")
end

function dlg_1_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What happens next?", "dlg_1_8")
	StartConversation(conversation, NPC, Spawn, "Collectibles are seen as a glow rising from the ground. If you're close enough, you'll notice a question mark above it. Double-click or right-click the glow and select 'harvest.' The item you gather will go into your inventory. You can examine this item in your inventory.")
end

function dlg_1_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I complete the collection?", "dlg_1_9")
	StartConversation(conversation, NPC, Spawn, "Your quest journal will open up automatically to the Collections tab. Use the Add button to add that item to a collection. As you travel through Norrath, you'll find different collectibles in different areas of the world. Some items can be part of more than one collection.")
end

function dlg_1_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'd like to learn about harvesting and gathering now.", "dlg_1_10")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "Continue to gather and examine all the items you find until all the icons of that collection are highlighted in your quest journal. Then you'll be able to turn the completed collection in to a collector who will reward you with some experience. If you already have a collectible in all collections that call for it, you can sell it to a merchant or trade it to another player.")
end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What happens next?", "dlg_4_2")
	StartConversation(conversation, NPC, Spawn, "Collectibles are seen as a glow rising from the ground. If you're close enough, you'll notice a question mark above it. Double-click or right-click the glow and select 'harvest.' The item you gather will go into your inventory. You can examine this item in your inventory.")
end

function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I complete the collection?", "dlg_4_3")
	StartConversation(conversation, NPC, Spawn, "Your quest journal will open up automatically to the Collections tab. Use the Add button to add that item to a collection. As you travel through Norrath, you'll find different collectibles in different areas of the world. Some items can be part of more than one collection.")
end

function dlg_4_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'd like to learn about harvesting and gathering now.", "dlg_4_4")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "Continue to gather and examine all the items you find until all the icons of that collection are highlighted in your quest journal. Then you'll be able to turn the completed collection in to a collector who will reward you with some experience. If you already have a collectible in all collections that call for it, you can sell it to a merchant or trade it to another player.")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What are harvestables used for?")
	StartConversation(conversation, NPC, Spawn, "Harvestables come in five forms, each tied to its own respective skill. These skills can be seen by opening your Skills window by pressing the P key, clicking on the Skills tab and selecting your General skills. Rocks increase mining, logs increase foresting, dens increase trapping, fish increase fishing, and plants increase gathering.")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Why do I need to increase my harvesting skills?", "dlg_5_3")
	StartConversation(conversation, NPC, Spawn, "The items found through harvesting are the basic building blocks of tradeskills.  They cannot be sold to vendors, but they can be traded or sold to other players who need them for their respective tradeskill professions.  Some components that can be found through harvesting are very rare and can be worth quite a bit of money to tradeskillers.")
end

function dlg_5_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'd like to learn about collections now.", "dlg_5_4")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "The skill required to harvest in a given area increases along with the difficulty of the area.  If you find that you are unable to harvest in an area you should return to a less difficult area and practice.")
end

function dlg_5_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What happens next?", "dlg_5_5")
	StartConversation(conversation, NPC, Spawn, "Collectibles are seen as a glow rising from the ground. If you're close enough, you'll notice a question mark above it. Double-click or right-click the glow and select 'harvest.' The item you gather will go into your inventory. You can examine this item in your inventory.")
end

function dlg_5_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "How do I complete the collection?", "dlg_5_6")
	StartConversation(conversation, NPC, Spawn, "Your quest journal will open up automatically to the Collections tab. Use the Add button to add that item to a collection. As you travel through Norrath, you'll find different collectibles in different areas of the world. Some items can be part of more than one collection.")
end

function dlg_5_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'd like to learn about harvesting and gathering now.", "dlg_5_7")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "Continue to gather and examine all the items you find until all the icons of that collection are highlighted in your quest journal. Then you'll be able to turn the completed collection in to a collector who will reward you with some experience. If you already have a collectible in all collections that call for it, you can sell it to a merchant or trade it to another player.")
end

function dlg_5_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "What are harvestables used for?", "dlg_5_8")
	StartConversation(conversation, NPC, Spawn, "Harvestables come in five forms, each tied to its own respective skill. These skills can be seen by opening your Skills window by pressing the P key, clicking on the Skills tab and selecting your General skills. Rocks increase mining, logs increase foresting, dens increase trapping, fish increase fishing, and plants increase gathering.")
end

function dlg_5_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Why do I need to increase my harvesting skills?", "dlg_5_9")
	StartConversation(conversation, NPC, Spawn, "The items found through harvesting are the basic building blocks of tradeskills.  They cannot be sold to vendors, but they can be traded or sold to other players who need them for their respective tradeskill professions.  Some components that can be found through harvesting are very rare and can be worth quite a bit of money to tradeskillers.")
end

function dlg_5_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'd like to learn about collections now.", "dlg_5_10")
	AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "The skill required to harvest in a given area increases along with the difficulty of the area.  If you find that you are unable to harvest in an area you should return to a less difficult area and practice.")
end

