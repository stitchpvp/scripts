function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "[Crouch Down and Listen]", "Option1")
	StartConversation(conversation, NPC, Spawn, "Shhh!  Quiet, I'm trying to listen to this.  And I said, get down!  We'll talk in a minute.")
  if HasQuest(Spawn, QUEST_1_FROM_Nethet) then
	AddConversationOption(conversation, "Yes, he said you were in trouble.", "Option2")
	StartConversation(conversation, NPC, Spawn, "I assume Nethet sent you?")
  end
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
  PlayAnimation(Spawn, 221, Spawn, 1)
	StartConversation(conversation, NPC, Spawn, "Now, what is it that they are up to I wonder...")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What do you want me to do?", "Option3")
	AddConversationOption(conversation, "So you want me to kill them right?", "Option4")
	StartConversation(conversation, NPC, Spawn, "That's true I'm in a bit of a bind.  If you can help me then I'll put in a good word to Nethet to help you out with whatever you need.  I can't very much make a deal with these smugglers if they are trying to kill me.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll get right to it.")
	StartConversation(conversation, NPC, Spawn, "I need the assassins they've sent after me to disappear if you know what I mean.  If they can't do the job then I can live long enough to have Nethet smooth all this misunderstanding out.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Consider it done.")
	StartConversation(conversation, NPC, Spawn, "Are you insane?  No, I just need the assassins they've sent after me to disappear if you know what I mean.  If they can't do the job then I can live long enough to have Nethet smooth all this misunderstanding out.")
end
