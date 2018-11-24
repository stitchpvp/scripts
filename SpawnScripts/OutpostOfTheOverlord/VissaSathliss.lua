function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Tell me about banking.", "Option1")
	AddConversationOption(conversation, "Tell me about mending items.", "Option2")
  AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "I am here to tell you all about mending and banking! Banking and mending! Which do you want to hear about?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "How do I open my bank?", "Option3")
	StartConversation(conversation, NPC, Spawn, "You already have an account with the Freeport Exchange, and luckily for you we have a branch right here in the outpost. Go see Banker Whizratchet to access your account. Additional branches can be found in your home district when you reach the city, as well as other parts of Freeport. You cannot access your bank from Qeynos.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "How do I make deposits and withdrawals?", "Option4")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "Inside the bank, your mouse pointer will turn into a dial icon when hovered over a banker. Just click on the banker to open your bank window. You'll see twelve general slots and eight \"shared\" slots. You can put bags or containers in your bank to increase the number of available slots.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What are \"shared\" bank slots?", "Option5")
	StartConversation(conversation, NPC, Spawn, "Coins and items can be dragged from your inventory to the bank window. To drag one item from a stack, hold down the Ctrl key as you drag it. To drag a certain number of coins or items, hold down the Shift key and drag, then enter the quantity.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Any other banking facts I should know?", "Option6")
	StartConversation(conversation, NPC, Spawn, "Items (but not coins) placed in your shared slots can be accessed by other characters on your account that are also citizens of Freeport. Lore and No-Trade items cannot be put into the shared slots. Characters that are Qeynos citizens cannot access a Freeport bank.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I want to learn about mending items.", "Option7")
	AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "If you choose to join a guild made up of your fellow players one day, you can access your guild bank by right-clicking on a banker and selecting \"Guild Bank.\"")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Tell me about banking.", "Option1")
  AddConversationOption(conversation, "I'll return for training later.")
	StartConversation(conversation, NPC, Spawn, "Your weapons and armor wear down when you die during combat. When they are down to zero durability, you will no longer receive any benefit from them. You can visit a mender to get them repaired, such as Mender Greshar at the outpost forge. Speak to Trainer Jayla Surfrider if you wish to learn more about the effects of death.")
end
