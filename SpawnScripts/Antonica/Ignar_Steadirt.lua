function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Is that why you are here?", "Option1")
	AddConversationOption(conversation, "Well, not me.  At least, not right now.")
	StartConversation(conversation, NPC, Spawn, "The great Qeynos Claymore -- folks come from all over to pray here.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Who are your enemies?", "Option2")
	StartConversation(conversation, NPC, Spawn, "I came here seeking strength to defeat my enemies.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Do you need help?", "Option3")
	AddConversationOption(conversation, "Wish I had time to help.  Perhaps later.")
	StartConversation(conversation, NPC, Spawn, "I pray for the strength to conquer the undead, but they are not just my enemies; the undead are the enemies of us all.  Several days ago, patrols were sent to see how our battle against the undead was faring.  And I -- I have the most disagreeable task of all.  I have to stand here and wait for the reports to return.  Me! Standing around waiting when there's undead to cleave! Pah!")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I could be persuaded.", "Option4")
	AddConversationOption(conversation, "No, I'd rather not.")
	StartConversation(conversation, NPC, Spawn, "That's why I'm praying. Perhaps my prayers have been answered.  Are you here to help me?")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Start what?", "Option5")
	StartConversation(conversation, NPC, Spawn, "Excellent. Are you ready to start?")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I can do that.")
	StartConversation(conversation, NPC, Spawn, "I need those darned dispatches brought back to me! You'd think that folks who get to run around looking for danger would realize how important it is to send word back to ... well, me.  Since they haven't, I need someone to knock them upside their heads and get the information, then bring it back to me.")
end
