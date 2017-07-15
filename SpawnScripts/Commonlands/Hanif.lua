function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function InRange(NPC, Spawn)
Say(NPC, "The suffering here is palpable", Spawn)
PlayAnimation(NPC, 12030, Spawn, 1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I tend to care only for my misery.", "Option1")
	AddConversationOption(conversation, "I do... for the right amount.", "Option2")
	AddConversationOption(conversation, "I couldn't agree more!", "Option3")
	AddConversationOption(conversation, "Never.")
	StartConversation(conversation, NPC, Spawn, "Those spared personal pain feel themselves called to assist the pain of others.  We must all carry our share of the misery which lies upon the world.  Wouldn't you agree?")
  if HasQuest(Spawn, QUEST_1_FROM_Hanif) then
	  AddConversationOption(conversation, "Oh, right.  I'll be back.")
	  StartConversation(conversation, NPC, Spawn, "I am glad that you are eager to assist me, but please do as I asked.")
  end
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "So you are a healer of some sort?", "Option4")
	AddConversationOption(conversation, "You have chosen to care for lepers?", "Option5")
	StartConversation(conversation, NPC, Spawn, "That is a narrow outlook, but expected in this day.  I myself, have felt a calling to tend to the suffering of these unfortunate souls.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Interesting, but not my kind of reward.", "Option6")
	StartConversation(conversation, NPC, Spawn, "Indeed.  I follow the doctrines of the ancient Springview Healers.  A grand house of healers that felt themselves called to help attend to the pain of others.  I am able to ease the suffering of these outcasts, and that is rewarding.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What kind of help are you looking for?", "Option7")
	StartConversation(conversation, NPC, Spawn, "What if I offered such crude rewards for your assistance?")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I can do that.  What do you need?")
	StartConversation(conversation, NPC, Spawn, "Get me some medicinal aids to alleviate some of their discomfort.  The medicine can help alleviate the pain, as well as lengthen the patient's life.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Coin and ale are the only true rewards.", "Option8")
	AddConversationOption(conversation, "Interesting, but not my kind of reward.", "Option9")
	StartConversation(conversation, NPC, Spawn, "Indeed.  I follow the doctrines of the ancient Springview Healers.  A grand house of healers that felt themselves called to help attend to the pain of others.  I am able to ease the suffering of these outcasts, and that is rewarding.")
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "It still wouldn't be worth my time.")
	StartConversation(conversation, NPC, Spawn, "What if I offered such crude rewards for your assistance?")
end

function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What kind of help are you looking for?", "Option10")
	StartConversation(conversation, NPC, Spawn, "What if I offered such crude rewards for your assistance?")
end

function Option10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I can do that.  What do you need?", "Option11")
	StartConversation(conversation, NPC, Spawn, "Get me some medicinal aids to alleviate some of their discomfort.  The medicine can help alleviate the pain, as well as lengthen the patient's life.")
end

function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Sounds easy enough.")
	StartConversation(conversation, NPC, Spawn, "Great!  I require mushrooms, stone beetle mandibles and the festering skin of many scourge rats.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "So you are a healer of some sort?", "Option12")
	StartConversation(conversation, NPC, Spawn, "That is a narrow outlook, but expected in this day.  I myself, have felt a calling to tend to the suffering of these unfortunate souls.")
end

function Option12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Interesting, but not my kind of reward.", "Option13")
	StartConversation(conversation, NPC, Spawn, "Indeed.  I follow the doctrines of the ancient Springview Healers.  A grand house of healers that felt themselves called to help attend to the pain of others.  I am able to ease the suffering of these outcasts, and that is rewarding.")
end

function Option13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What kind of help are you looking for?", "Option14")
	StartConversation(conversation, NPC, Spawn, "What if I offered such crude rewards for your assistance?")
end

function Option14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I think I'll pass.")
	StartConversation(conversation, NPC, Spawn, "Get me some medicinal aids to alleviate some of their discomfort.  The medicine can help alleviate the pain, as well as lengthen the patient's life.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "So you are a healer of some sort?", "Option15")
	StartConversation(conversation, NPC, Spawn, "I am glad to hear that!  It is too often that citizens here hold a narrower outlook.  I myself, have felt a calling to tend to the suffering of these unfortunate souls.")
end

function Option15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Is there a way I can help to ease their pain?", "Option16")
	StartConversation(conversation, NPC, Spawn, "Indeed.  I follow the doctrines of the ancient Springview Healers.  A grand house of healers that felt themselves called to help attend to the pain of others.")
end

function Option16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I can do that.  What do you need?")
	StartConversation(conversation, NPC, Spawn, "Get me some medicinal aids to alleviate some of their discomfort.  The medicine can help alleviate the pain, as well as lengthen the patient's life.")
end
