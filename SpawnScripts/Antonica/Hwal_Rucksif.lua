function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I might be able to help you.")
	AddConversationOption(conversation, "No thanks, I lost my work ethic a while back.", "Option1")
	StartConversation(conversation, NPC, Spawn, "Ya see, I've been tasked with gettin' a whole bunch of fine weapons made for the sentries out here, and me achin' back is already at its limit.  Argh!  These boots chafe something awful!")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "It'd better be worth my time, dwarf.")
	StartConversation(conversation, NPC, Spawn, "Much thanks to ya, stranger!  I'm not sure I could finish the job without your help!  I need plenty of iron and wood for these weapons.  It's a lot of work, but I'm sure that together we can get it done in half the time that it'd take me to do it alone!")
end

