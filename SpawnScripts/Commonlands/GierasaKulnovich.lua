function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "No, you crazy old hag!")
	AddConversationOption(conversation, "Who are you?", "Option1")
	AddConversationOption(conversation, "What information do you have regarding the Mad Mage, Zarvonn?", "Option2")
	StartConversation(conversation, NPC, Spawn, "Come in, child, come in.  You must be so tired from your journeys.  Come, rest here.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What parts?", "Option3")
	AddConversationOption(conversation, "Why have you been exiled?", "Option4")
	StartConversation(conversation, NPC, Spawn, "Oh, I am just an old woman who has seen far too many years.  My companions and I  travel these lands.  We have been exiled from Freeport, and don't really like to settle in one spot, you know.  Too many parts of the world left to see.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, NPC, Spawn, "Oh, there are many places left to visit, child.  The lands are not all gone, they are just a little hard to find.  You'll see, my dear.  I have a good feeling you'll find your way to them.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Like where?", "Option5")
	StartConversation(conversation, NPC, Spawn, "This is a leper colony, child.  The sickness is why we are not welcome within the city.  Just as well... I have always been a nomad, and there are so many places outside of Freeport to see.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, NPC, Spawn, "Oh, there are many places left to visit, child.  The lands are not all gone, they are just a little hard to find.  You'll see, my dear.  I have a good feeling you'll find your way to them.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What are you talking about?", "Option6")
	StartConversation(conversation, NPC, Spawn, "Yes... the cards said you would come to us.  They said that time will no longer keep what is hidden from the eyes of the seeker.  They also said that death will be ascendant, but not for whom.  Yes... yes, you are the one.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I have no idea what you're talking about!", "Option7")
	StartConversation(conversation, NPC, Spawn, "I cannot deny the fate that the cards show me, errant one.  This is a world of worms, and death is but one of its kings.  You will find one who pledges her fealty to a single incarnation of this ruler, yet she seeks another incarnation instead.  Seek out the tower of the angry one and speak with the new house-souls.")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "So what you're saying is that I should talk to a woman in his tower, to the southwest. Got it.")
	StartConversation(conversation, NPC, Spawn, "Even though Zarvonn's tower is no longer here, it is easily found.  Within its spire you will find a woman who has many masters, but only acknowledges one.  Tell her that if she seeks Zarvonn's realm, she will surely find it.  She can see it evidenced within the siege of time.  Head to the south and head to the west and you will find the finger pointing to where Zarvonn exists... or perhaps... it doesn't.")
end
