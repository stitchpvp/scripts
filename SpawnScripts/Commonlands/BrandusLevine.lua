function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Another person who needs help?  Fine, what do you need?", "Option1")
	AddConversationOption(conversation, "I'll help you only if it pays well.", "Option2")
	AddConversationOption(conversation, "I would be happy to help you.", "Option3")
	AddConversationOption(conversation, "You have to be kidding me.  No thanks, find another lackey, I'm busy with my own important things.")
	StartConversation(conversation, NPC, Spawn, "Hrmmm... You do have the look of a citizen about you.  You're not just random rabble from the streets.  I could use your help.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Get to the point already.", "Option4")
	AddConversationOption(conversation, "I'm assuming that's a threat, I'll pretend I didn't hear it.  What did you have in mind?", "Option5")
	AddConversationOption(conversation, "Obscurity is my middle name.  How about I just obscure myself out of this conversation.")
	StartConversation(conversation, NPC, Spawn, "You do realize I can find someone else.  And maybe you'll just fade into obscurity.  But, since you've at least shown some interest then perhaps I can use you.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What was in this shipment of yours that's so important?", "Option6")
	AddConversationOption(conversation, "I think I can do that, where should I start looking?", "Option7")
	AddConversationOption(conversation, "I thought this would be interesting.  Forget it, this sounds like another waste of my precious time.")
	StartConversation(conversation, NPC, Spawn, "I've been waiting on a very special shipment to arrive.  It was due here three days ago and there has been no sign of the individuals who were supposed to bring it.  I've had to send the boat to the Freeport docks and every day it sits there it's costing me money.  I need you to find out what happened to my shipment or why they are so late.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "And how would you expect me to find it if I have no idea what it is?", "Option8")
	AddConversationOption(conversation, "On second thought, if you're not going to tell me what I need to know I think I'll just leave.")
	StartConversation(conversation, NPC, Spawn, "That little bit of information you don't need to know.  All I'm asking for is that you find my missing cargo.")
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll start with him then.", "Option9")
	StartConversation(conversation, NPC, Spawn, "Fine, if I have to hold your hand through everything.  You might start with Nethet near the main gates of Freeport.  He watches most of who enter or leave the city.  If anyone knows anything about where my missing cargo went it would likely be him.")
end

function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I know.", "Option10")
	StartConversation(conversation, NPC, Spawn, "Watch your coin around his type.")
end

function Option10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I know.")
	StartConversation(conversation, NPC, Spawn, "Watch your coin around his type.")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	StartConversation(conversation, NPC, Spawn, "Fine, if I have to hold your hand through everything.  You might start with Nethet near the main gates of Freeport.  He watches most of who enter or leave the city.  If anyone knows anything about where my missing cargo went it would likely be him.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	StartConversation(conversation, NPC, Spawn, "I've been waiting on a very special shipment to arrive.  It was due here three days ago and there has been no sign of the individuals who were supposed to bring it.  I've had to send the boat to the Freeport docks and every day it sits there it's costing me money.  I need you to find out what happened to my shipment or why they are so late.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Reward.  I like the sound of that.  What did you have in mind?", "Option11")
	AddConversationOption(conversation, "You don't look like you could afford my standard fee.  I think I'll go look for adventure elsewhere.")
	StartConversation(conversation, NPC, Spawn, "Oh, it pays well, very well indeed.  I don't ask simple things but I reward loyal service.")
end

function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What was in this shipment of yours that's so important?", "Option12")
	AddConversationOption(conversation, "I think I can do that, where should I start looking?", "Option13")
	AddConversationOption(conversation, "I thought this would be interesting.  Forget it, this sounds like another waste of my precious time.")
	StartConversation(conversation, NPC, Spawn, "I've been waiting on a very special shipment to arrive.  It was due here three days ago and there has been no sign of the individuals who were supposed to bring it.  I've had to send the boat to the Freeport docks and every day it sits there it's costing me money.  I need you to find out what happened to my shipment or why they are so late.")
end

function Option12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "And how would you expect me to find it if I have no idea what it is?", "Option14")
	StartConversation(conversation, NPC, Spawn, "That little bit of information you don't need to know.  All I'm asking for is that you find my missing cargo.")
end

function Option14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll start with him then.")
	StartConversation(conversation, NPC, Spawn, "Fine, if I have to hold your hand through everything.  You might start with Nethet near the main gates of Freeport.  He watches most of who enter or leave the city.  If anyone knows anything about where my missing cargo went it would likely be him.")
end

function Option13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll start with him then.")
	StartConversation(conversation, NPC, Spawn, "Fine, if I have to hold your hand through everything.  You might start with Nethet near the main gates of Freeport.  He watches most of who enter or leave the city.  If anyone knows anything about where my missing cargo went it would likely be him.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Citizen?  Do you even know who I am?  I have no time for such arrogance.")
	AddConversationOption(conversation, "So, what is it you needed such dire help on?", "Option15")
	StartConversation(conversation, NPC, Spawn, "Good, good, I like to see such eagerness in a citizen of Freeport.")
end

function Option15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What was in this shipment of yours that's so important?", "Option16")
	StartConversation(conversation, NPC, Spawn, "I've been waiting on a very special shipment to arrive.  It was due here three days ago and there has been no sign of the individuals who were supposed to bring it.  I've had to send the boat to the Freeport docks and every day it sits there it's costing me money.  I need you to find out what happened to my shipment or why they are so late.")
end

function Option16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "And how would you expect me to find it if I have no idea what it is?", "Option17")
	StartConversation(conversation, NPC, Spawn, "That little bit of information you don't need to know.  All I'm asking for is that you find my missing cargo.")
end

function Option17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll start with him then.", "Option18")
	StartConversation(conversation, NPC, Spawn, "Fine, if I have to hold your hand through everything.  You might start with Nethet near the main gates of Freeport.  He watches most of who enter or leave the city.  If anyone knows anything about where my missing cargo went it would likely be him.")
end

function Option18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	StartConversation(conversation, NPC, Spawn, "Watch your coin around his type.")
end
