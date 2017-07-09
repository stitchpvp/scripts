
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Your daisies look very nice.  You must be a fine gardener.", "Option1")
	AddConversationOption(conversation, "I must be off. Good day to you. ")
	StartConversation(conversation, NPC, Spawn, "Hail to you, adventurer! Mind your feet, and don't step on my dear little flowers! Just coming into bloom, they are.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What Knights of Thunder?", "Option2")
	StartConversation(conversation, NPC, Spawn, "Thank you!  Gardening is my life.  I love tending the small, green things of the earth.  Why, some of these sprouts shall be tall trees one day.  And, many of my plants, will soon feed the people of Qeynos.  Hmm ... makes one wonder, though.  What do you suppose fed those Knights of Thunder so long ago?")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Maybe someday some brave explorer will find the answer. ")
	AddConversationOption(conversation, "I may explore Stormhold some day.  If I find out how, I'll be sure to let you know.", "Option3")
	StartConversation(conversation, NPC, Spawn, "Oh, come now!  Surely you have heard the rumors that some explorers believe they found the location of the legendary Stormhold? ... The ancient fortress of the Knights of Thunder?  Personally, I think those "explorers" were crypt raiders, but what do I know?  Plants.  That's what I know.  And no one ever saw the Knights of Thunder growing their own plants ...  or hauling supply wagons out of Qeynos for that matter.  So, how do you suppose they fed themselves?  Hmm?")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you for the concern.")
	StartConversation(conversation, NPC, Spawn, "That's very generous of you.  I'm curious to a fault, you know.  However ... if you do go into Stormhold, please use caution.")
end
