function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I've a letter for you from Trader Cooper.", "Option1")
	AddConversationOption(conversation, "Nothing, nevermind.")
	AddConversationOption(conversation, "Remember me?  I was nice enough to do your friend a favor.", "Option2")
	StartConversation(conversation, NPC, Spawn, "What brings you here? I'm VERY busy.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Only after I've received payment.", "Option3")
	StartConversation(conversation, NPC, Spawn, "That worm has been delaying for long enough.  It's about time he did his job. What are you waiting for!? Give it to me!")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	StartConversation(conversation, NPC, Spawn, "Gah!  I could kill you right here and now for defying me.  Here, take this and give me the letter NOW!")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Fine, I'm going.")
	AddConversationOption(conversation, "What kind of research?  Maybe I can help you out.", "Option4")
	StartConversation(conversation, NPC, Spawn, "Favor?!  You demanded money for that "favor" as I recall.  Besides, that man is no "friend" of mine.  He was merely doing a little... research for me.  Now leave me alone!")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "This will be easy money.  I'll take the job.")
	StartConversation(conversation, NPC, Spawn, "Bah!  You are very annoying, you know that?  However, you are persistent and brave... or perhaps just stupid.  In any case, I could make use of you and it would save me some time.  Cooper found out the general location of a recently discovered shrine from a few adventurers.  I was going to check it out myself but I have other... business to attend to.  Go and find it and I'll throw a few coins your way.")
end
