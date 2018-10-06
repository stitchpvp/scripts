function spawn(NPC, Spawn)
  ProvidesQuest(NPC, 188)
  ProvidesQuest(NPC, 189)
end

function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  local conversation = CreateConversation()

  if not HasQuest(Spawn, 188) and not HasCompletedQuest(Spawn, 188) then
    AddConversationOption(conversation, "I guess that depends on the menu.", "Quest1_Option1")
    AddConversationOption(conversation, "No, I'm not hungry.")
    StartConversation(conversation, NPC, Spawn, "Mooshga meet new friend! You look hungry. Mooshga hungry. You hungry?")
  end
	
  if HasQuest(Spawn, 188) and GetQuestStep(Spawn, 188) == 1 then
	AddConversationOption(conversation, "Okay, okay. Mooshga, I'm going.")
	StartConversation(conversation, NPC, Spawn, "You don't look hungry enough. You go away! NO FOOD FOR YOU!")
  elseif HasQuest(Spawn, 188) and GetQuestStep(Spawn, 188) == 2 then
    AddConversationOption(conversation, "I bought you the ears you asked for.", "Quest1_Completed")
	AddConversationOption(conversation, "Nothing right now.")
	StartConversation(conversation, NPC, Spawn, "You back so quick! What you have for Mooshga?")
  end
  
  if HasQuest(Spawn, 189) and GetQuestStep(Spawn, 189) == 1 then
	AddConversationOption(conversation, "Okay, okay. Mooshga, I'm going.")
	StartConversation(conversation, NPC, Spawn, "You don't look hungry enough. You go away! NO FOOD FOR YOU!")
  elseif HasQuest(Spawn, 189) and GetQuestStep(Spawn, 189) == 2 then
    AddConversationOption(conversation, "I have the huge crab claws for your soup, Mooshga.", "Quest2_Completed")
	AddConversationOption(conversation, "Nothing right now.")
	StartConversation(conversation, NPC, Spawn, "You back so quick! What you have for Mooshga?")
  end
  
  if HasCompletedQuest(Spawn, 188) and not HasQuest(Spawn, 189) then
    AddConversationOption(conversation, "What? No thanks... I just ate.")
	AddConversationOption(conversation, "Yes, I am. I would love more of your cooking, Mooshga.", "Quest2_Option1")
	StartConversation(conversation, NPC, Spawn, "You still look hungry! You hungry? Mooshga knows when people hungry. Mooshga will feed you but you do something for Mooshga first.")
end

----------- "Hyena Jerky"

function Quest1_Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Come to think of it, I am hungry. What are you going to make?", "Quest1_Option2")
	AddConversationOption(conversation, "An ogre baker? I'll be on my way.")
	StartConversation(conversation, NPC, Spawn, "Mooshga is greatest baker in all Commonlands! You want Mooshga make somethin' for you?")
end

function Quest1_Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Jerky sounds good. I'll do it.", "Quest1_Option3")
	AddConversationOption(conversation, "Ogre cooking sounds scary to me. Bye!")
	StartConversation(conversation, NPC, Spawn, "Mooshga hungry for jerky. Plus Mooshga try to make old secret recipe of famous ancestor chef. You go collect pieces for jerky so Mooshga can figure out recipe! It made from hyena meat. Get carrion hound ears for Mooshga.")
end

function Quest1_Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Okay, I'll be right back.")
	StartConversation(conversation, NPC, Spawn, "Good...Yes, Mooshga make Hyena Jerky for you.")
	OfferQuest(NPC, Spawn, 188)
end

function Quest1_Completed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Oh, thanks you! you make Mooshga happy Ogre.")
	SetStepComplete(Spawn, 188, 2)
end

----------- "Seafood Surprise"

function Quest2_Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What type of claws?", "Quest2_Option2")
	AddConversationOption(conversation, "I think I just lost my appetite.")
	StartConversation(conversation, NPC, Spawn, "Mooshga make special surprise today. Mooshga needs claws for surprise recipe she figure out.")
end

function Quest2_Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'm getting hungrier by the minute." "Quest2_Option3")
	AddConversationOption(conversation, "Oh... I think I just lost my appetite.")
	StartConversation(conversation, NPC, Spawn, "Mooshga need special claws from crabs. The HUGE ones. You find crabs in southeast. They live in freshwater. Near old tower there is good spot. You go find crabs and snap tasty claws off, then bring back to Mooshga.")
	OfferQuest(NPC, Spawn, 189)
end

function Quest2_Completed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Thanks, Mooshga.")
	StartConversation(conversation, NPC, Spawn, "Mooshga makes you some too. Here you go.")
	SetStepComplete(Spawn, 189, 2)
end