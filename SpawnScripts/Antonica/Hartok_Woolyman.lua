function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Actually, I am looking for work.", "Option1")
	AddConversationOption(conversation, "Well, if you're going to be like that....")
	StartConversation(conversation, NPC, Spawn, "Hello, adventurer! Would you care for a nice bearskin rug for your abode? I made them myself. If you don't want one, get lost! I have things to do.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Maybe, if the price is right.", "Option2")
	AddConversationOption(conversation, "I don't feel like it.")
	StartConversation(conversation, NPC, Spawn, "Looking for work, huh? I think I can find something for you to do. You see, I make these here bearskin rugs, and I am finding less and less time to gather the pelts myself. Perhaps you can help.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Bye.")
	AddConversationOption(conversation, "Okay, so what do you need?", "Option3")
	StartConversation(conversation, NPC, Spawn, "Look, don't get ahead of yourself. It's not like Holly Windstalker is going to be chasing you down for killing her precious bears! Ha! As a matter of fact, I have been killing every bear I have seen for years, and nothing has stopped me yet!")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Sure, that doesn't sound so bad.", "Option4")
	StartConversation(conversation, NPC, Spawn, "I need you to kill some bears for me, of course. You see, I have so many orders to fill, I can't even think of going out and getting them myself. So, from time to time, I look to adventurers such as yourself to help me out a little bit.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Bye.")
	AddConversationOption(conversation, "Okay, kill bears. Got it.", "Option5")
	StartConversation(conversation, NPC, Spawn, "There are plenty of bears out around these parts. These parts were protected for so long, it seems like it's instinct for them to come here and gather. Business is booming and there is no end of supply in sight!")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll be right back with your pelts.")
	StartConversation(conversation, NPC, Spawn, "Yup, Miss Windstalker must be rolling over in her grave! Oh well, more bears for me, right? Ha!")
end

