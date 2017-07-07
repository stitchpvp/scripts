function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I won't bother you then.")
	AddConversationOption(conversation, "What is a Far Seas Requisition?", "Option1")
	StartConversation(conversation, NPC, Spawn, "Unless you're filling a Far Seas Requisition of Antonica I do not have time for you. Time is money.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Hire me as your huntsman. ", "Option2")
	AddConversationOption(conversation, "Thanks for the information. ")
	StartConversation(conversation, NPC, Spawn, "The Far Seas Trading Company pays huntsmen to gather hides.  We issue a requisition order for the kind of hide we wish to buy. The huntsman takes the order and brings us the hides. We pay the huntsman for the hides; if he doesn't return, we don't pay him.  For legal purposes, the huntsman is considered a consultant for the Far Seas Trading Company and not a full-time employee; therefore, we assume no liability for the actions, expenses, or injuries of the consultant. ")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Good day to you. ")
	StartConversation(conversation, NPC, Spawn, "This is the office for processing requisition orders, not the office for employment. We have more than enough huntsmen on staff.  So, unless you happen to find an unclaimed Far Seas Requisition and fill its order... our business is done.  Good day. Next!")
end
