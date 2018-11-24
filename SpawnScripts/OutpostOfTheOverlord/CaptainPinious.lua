function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Teach me about interacting with people and objects around Norrath.", "Main")
  AddConversationOption(conversation, "I'll return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Hello there, " ... GetName(Spawn) ... ". So you're the new addition to the outpost that we've been hearing about. I've been stationed here by the Overlord to instruct you in ways that you can interact with the world around you.")
end

function Main(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "In what ways can I interact with other player characters?", "Option1")
  AddConversationOption(conversation, "How do I interact with non-player characters?", "Option2")
  AddConversationOption(conversation, "How can I interact with objects in the world?", "Option3")
  AddConversationOption(conversation, "What can I do with items in my inventory?", "Option4")
	StartConversation(conversation, NPC, Spawn, "There are several types of individuals and items you can interact with. Among these are other player characters, non-player characters, objects in the world, and items in your inventory.")
end

function Main_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

  AddConversationOption(conversation, "How do I interact with non-player characters?", "Option2")
  AddConversationOption(conversation, "How can I interact with objects in the world?", "Option3")
  AddConversationOption(conversation, "What can I do with items in my inventory?", "Option4")
  AddConversationOption(conversation, "I'll return for instructions later.")
	StartConversation(conversation, NPC, Spawn, "If you're near another player, you can type something on the command line of your Chat window and press enter. All other nearby players can see this text. To send a private message, right-click on the character and select the \"tell\" option, or hit the T key and type their name.")
end

function Main_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "In what ways can I interact with other player characters?", "Option1")
  AddConversationOption(conversation, "How can I interact with objects in the world?", "Option3")
  AddConversationOption(conversation, "What can I do with items in my inventory?", "Option4")
	StartConversation(conversation, NPC, Spawn, "To learn about combat, talk to Trainer Darg Frostwind near the western archway. To learn about evaluating your opponents, talk to Trainer Anna Winston, who is near Darg. Both these trainers provide information vital to your success as an adventurer.")
end

function Main_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

  AddConversationOption(conversation, "In what ways can I interact with other player characters?", "Option1")
  AddConversationOption(conversation, "How do I interact with non-player characters?", "Option2")
  AddConversationOption(conversation, "How can I interact with objects in the world?", "Option3")
  AddConversationOption(conversation, "What can I do with items in my inventory?", "Option4")
	StartConversation(conversation, NPC, Spawn, "Be careful about clicking on an object when you don't know what it will do, as something unexpected might happen. You might draw the attention of someone who didn't want you to touch it, or might end up somewhere you didn't plan to be.")
end

function Main_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

  AddConversationOption(conversation, "In what ways can I interact with other player characters?", "Option1")
  AddConversationOption(conversation, "How do I interact with non-player characters?", "Option2")
  AddConversationOption(conversation, "How can I interact with objects in the world?", "Option3")
	AddConversationOption(conversation, "I'll return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "Some items in your inventory can give you quests or provide other benefits. Right-click on items in your inventory and select the "Examine" option to learn more about any item you're carrying.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "How can I tell which actions I can take?", "Option1_1")
	StartConversation(conversation, NPC, Spawn, "You can perform a number of actions by right-clicking on a nearby player that you see. You can invite them to a group, follow them, talk to them, inspect their equipment, trade with them, and other choices. Some actions can only be taken while you're in a group with them.")
end

function Option1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "How do I talk to other players?", "Main")
	StartConversation(conversation, NPC, Spawn, "If one of the right-click choices is grey, it means it's unavailable. You either need to be closer to the other player or be grouped with them.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "How do I tell the difference?", "Option2_1")
	StartConversation(conversation, NPC, Spawn, "There are a variety of non-player characters (NPCs) around Norrath. Some of them are there to talk to or buy from, while others are meant to fight.")
end

function Option2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Are there different ways to interact with a single NPC?", "Option2_2")
	StartConversation(conversation, NPC, Spawn, "The shape of your mouse pointer when you move it over an NPC indicates the primary means of interaction. If the pointer becomes a speech bubble, you can talk to that NPC. If it becomes crossed swords, you can attack them. If it looks like a stack of coins, that's a merchant.")
end

function Option2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "How do I talk to other players?", "Option2_3")
	StartConversation(conversation, NPC, Spawn, "You can see all the ways you can interact with an NPC by right-clicking on it. If an option is grey, you probably need to be closer to it.")
end

function Option2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "How do I go about attacking an NPC?", "Main_3")
	StartConversation(conversation, NPC, Spawn, "Well, you're talking to me, so you know at least one way! You can either right-click and select "hail," click on them if that's their default action, or target them and hit the H key.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "How do I tell what the glowing object will do?", "Option3_2")
	StartConversation(conversation, NPC, Spawn, "If something glows when you move your mouse over it, you can interact with it. It might be a door or gate that takes you to another location, a book you see on a table, a chest you can loot, or another type of object. Some items glow only if you're on a quest to find them.")
end

function Option3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Can anything bad happen by clicking on an object?", "Main_4")
	StartConversation(conversation, NPC, Spawn, "Sometimes you'll receive information on what the object will do when you hold your mouse over it. Other times you will need to right-click on the object to see what action you can perform with it.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "How do I know what I can do with an item?", "Option4_2")
	StartConversation(conversation, NPC, Spawn, "Sometimes you'll receive items in your inventory, such as when you complete a quest or loot a chest from a fallen opponent. Other times, you'll receive an item by clicking on a glowing object you see in the world, or that is given to you by another player.")
end

function Option4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What are some common things I can do with items?", "Option4_3")
	StartConversation(conversation, NPC, Spawn, "Open your inventory with the I key, or open up all bags you are carrying by pressing the B key. You can bring up a menu of choices for what you can do with an item by right-clicking on it. Double-clicking the left mouse button on something in your inventory will try to do that item's default action.")
end

function Option4_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What about other types of items?", "Main_5")
	StartConversation(conversation, NPC, Spawn, "If the item is a piece of armor or a weapon, you can equip it. If it's a book or note, you can read it. If it's food or drink, you can consume it. Some items, such as furniture, can be placed while you're inside your house or apartment.")
end
