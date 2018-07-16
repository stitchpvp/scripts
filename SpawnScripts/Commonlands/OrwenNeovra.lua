function spawn(NPC, Spawn)
  ProvidesQuest(NPC, 187)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, 187) then
		AddConversationOption(conversation, "Be at peace, Orwen.")
		StartConversation(conversation, NPC, Spawn, "Leave me to grieve in peace. ")
	end
	
	if not HasQuest(Spawn, 187) and not HasCompletedQuest(Spawn, 187) then
		AddConversationOption(conversation, "Who are you talking about?", "Option1")
		AddConversationOption(conversation, "I'll stay out of your way.")
		StartConversation(conversation, NPC, Spawn, "She's gone! There was nothing I could do. Once I finish this cutter, that will all change. I got a few scars that I need to return to their dealers.")
	end
	
	if HasQuest(Spawn, 187) and GetQuestStep(Spawn, 187) == 1 then
		AddConversationOption(conversation, "I'll return when I know more.")
		StartConversation(conversation, NPC, Spawn, "What word have you of my wife? Why do you return?  Don't toy with me, less you wish I test my blade on your flesh.")
	elseif HasQuest(Spawn, 187) and GetQuestStep(Spawn, 187) == 2 then
		AddConversationOption(conversation, "I have some news regarding Ariana.", "Option3")
		StartConversation(conversation, NPC, Spawn, "That look on your face ... I fear what news you bear. ")
	end
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Maybe I could help look for her while you finish your weapon?", "Option2")
	AddConversationOption(conversation, "I'll stay out of your way.")
	StartConversation(conversation, NPC, Spawn, "My wife, Ariana.  Bleeding in the dust, I watched the orcs drag her away. But when I finish this blade, I'll retrieve her from the grasp of those evil orcs!")
end

function Option2(NPC, Spawn)
	local conversation = CreateConversation()
	
	AddConversationOption(conversation, "I'll do that. ")
	StartConversation(conversation, NPC, Spawn, "The orcs terrify most people around here. I appreciate your courage.  Go now and search for my wife and return with any information you find.")
	OfferQuest(NPC, Spawn, 187)
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you and good luck to you.")
	StartConversation(conversation, NPC, Spawn, "My beloved Ariana, she was a wonderful woman. I'll keep her memories along with this necklace. Now that she is gone, I have no need for this blade.  Here, take it with you.  Maybe it will serve you a better fate than it served me.")
	SetStepComplete(Spawn, 187, 2)
end
