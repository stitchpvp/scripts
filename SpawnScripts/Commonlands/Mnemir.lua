local QUEST_1_Captain_Feralis = 300



function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
  Say(NPC, "What do you want?", Spawn)

  if HasQuest(Spawn, QUEST_1_Captain_Feralis) then
	AddConversationOption(conversation, "Your taxes weren't all in your mailbox, you still owe more.", "Option1")
	StartConversation(conversation, NPC, Spawn, "What yous want?")
  end
end


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Don't play dumb, Mnemir. Just give up the money you owe before I force it out of you.", "Option2")
	StartConversation(conversation, NPC, Spawn, "What?! That's a lie!")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "We'll see about that...")
	StartConversation(conversation, NPC, Spawn, "I won't! I don't have it! I won't give you anything! You can't make me do anything!")
end
