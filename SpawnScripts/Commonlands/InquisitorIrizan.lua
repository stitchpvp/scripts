function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "But I'm not nervous.", "Option1")
	AddConversationOption(conversation, "I'll be on my way.")
	StartConversation(conversation, NPC, Spawn, "I don't believe we've met. I am the Overlord's chief inquisitor. Oh, don't be nervous--that is, unless you have something to be nervous about.  ")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What's going on here?  What do you want?", "Option2")
	StartConversation(conversation, NPC, Spawn, "Sure you're not and everyone in Freeport is a perfect angel, downright model citizens they are.  I have ways of finding out what I want.  Whether it's fact or fiction, that's what I get paid to decide.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Yeah, I understand.  What is it you want me to do?", "Option3")
	StartConversation(conversation, NPC, Spawn, "Yes!  Indeed. What do I want?  You're a quick one. You'll serve me well, and if you don't I'll mark you as traitor to Freeport and our Overlord.  Is that understood?")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Crystal clear.")
	StartConversation(conversation, NPC, Spawn, "I'm pleased that we've come to an understanding so quickly. My request is quite simple. I need you to recover a few items for me. That's it. Merchant Edmond is your contact; he'll tell you what you need to do. Is this clear?")
end
