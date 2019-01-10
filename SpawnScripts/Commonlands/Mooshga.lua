function spawn(NPC, Spawn)
  ProvidesQuest(NPC, 188)
  ProvidesQuest(NPC, 189)
  ProvidesQuest(NPC, 190)
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

  if HasQuest(Spawn, 190) and GetQuestStep(Spawn, 190) == 1 then
	   AddConversationOption(conversation, "Okay, okay. Mooshga, I'm going.")
	   StartConversation(conversation, NPC, Spawn, "You don't look hungry enough. You go away! NO FOOD FOR YOU!")
  elseif HasQuest(Spawn, 190) and GetQuestStep(Spawn, 190) == 2 then
	   AddConversationOption(conversation, "Good news Mooshga. I was able to gather the iron clusters you need to get your pot fixed.", "Quest3_Completed")
	   AddConversationOption(conversation, "Nothing right now.")
	   StartConversation(conversation, NPC, Spawn, "You back so quick! What you have for Mooshga?")
  end

  if HasCompletedQuest(Spawn, 188) and not HasQuest(Spawn, 189) then
	   AddConversationOption(conversation, "Yes, I am. I would love more of your cooking, Mooshga.", "Quest2_Option1")
	   AddConversationOption(conversation, "What? No thanks... I just ate.")
	   StartConversation(conversation, NPC, Spawn, "You still look hungry! You hungry? Mooshga knows when people hungry. Mooshga will feed you but you do something for Mooshga first.")
  end

  if HasCompletedQuest(Spawn, 189) and not HasQuest(Spawn, 190) then
	   AddConversationOption(conversation, "What happened, Mooshga?", "Quest3_Option1")
	   AddConversationOption(conversation, "You seem busy. I'll come back another time.")
	   StartConversation(conversation, NPC, Spawn, "The pot! Mooshga not believe what happened.")
  end

  if HasCompletedQuest(Spawn, 190) and not HasQuest(Spawn, 191) then
	   AddConversationOption(conversation, "Okay.")
	   StartConversation(conversation, NPC, Spawn, "Quest #4 coming soon!")
  end
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

	AddConversationOption(conversation, "I'm getting hungrier by the minute.", "Quest2_Option3")
	AddConversationOption(conversation, "Oh... I think I just lost my appetite.")
	StartConversation(conversation, NPC, Spawn, "Mooshga need special claws from crabs. The HUGE ones. You find crabs in southeast. They live in freshwater. Near old tower there is good spot. You go find crabs and snap tasty claws off, then bring back to Mooshga.")
end

function Quest2_Option3(NPC, Spawn)
	OfferQuest(NPC, Spawn, 189)
end

function Quest2_Completed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Thanks, Mooshga.")
	StartConversation(conversation, NPC, Spawn, "Mooshga makes you some too. Here you go.")
	SetStepComplete(Spawn, 189, 2)
end

----------- "Crack Pot"

function Quest3_Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Did you catch it?", "Quest3_Option2")
	AddConversationOption(conversation, "Poor little squirrel. That's just mean, Mooshga. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Well...  Mooshga was cooking. After put water in Moosgha's cooking pot when fire was really hot, tasty squirrel run by. Mooshga thought would make tasty appetizer for dinner. Mooshga chased tasty and forgot about boiling pot.")
end

function Quest3_Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Sure.", "Quest3_Option3")
	AddConversationOption(conversation, "I don't have time right now, Mooshga.")
	StartConversation(conversation, NPC, Spawn, "No, squirrel got away. When Mooshga return, all water was boiled away and pot got too hot. Mooshga tried put more water in pot, but pot cracked. Now Mooshga can't cook. Maybe you can help Mooshga fix pot?")
end

function Quest3_Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Ok, I'll be right back.")
	StartConversation(conversation, NPC, Spawn, "Okay! You go harvest the iron clusters for Mooshga and then can fix pot!")
	OfferQuest(NPC, Spawn, 190)
end

function Quest3_Completed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Thanks, Mooshga.")
	StartConversation(conversation, NPC, Spawn, "Oooo... good! Mooshga gets back to making her goodies again. Mooshga don't need all iron to fix pot. You keep rest of iron.")
	SetStepComplete(Spawn, 190, 2)
end
