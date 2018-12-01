function hailed(NPC, Spawn)
	local conversation = CreateConversation()

  if HasQuest(Spawn, 192) and GetQuestStep(Spawn, 192) == 1 then
	  AddConversationOption(conversation, "I was actually sent here to see if you needed any help.", "convo_1")
	  AddConversationOption(conversation, "I'll come back.")
	  StartConversation(conversation, NPC, Spawn, "Need to wait for stew to be done, no firsties!  Many Militia to feed, your mouth no bigger than the rest.")
  elseif not HasQuest(Spawn, 192) and not HasCompletedQuest(Spawn, 192) then
    AddConversationOption(conversation, "I'll come back.")
	  StartConversation(conversation, NPC, Spawn, "Need to wait for stew to be done, no firsties!  Many Militia to feed, your mouth no bigger than the rest.")
  elseif HasQuest(Spawn, 192) and GetQuestStep(Spawn, 192) == 2 then
		AddConversationOption(conversation, "Very well, I'll be back.")
	  StartConversation(conversation, NPC, Spawn, "Slice 'em, bash 'em, poke 'em! Gorga doesn't care how, just get me those bees for the stew! They're right over there, just past the barricades.")
	elseif HasQuest(Spawn, 192) and GetQuestStep(Spawn, 192) == 3 then
		AddConversationOption(conversation, "Mmm, livers!")
	  StartConversation(conversation, NPC, Spawn, "Heeheehee!  Toss 'em in the pot.  The next yummies are those main pot filler, livers!  Those elks are eatin' up all the eatin' plants anyways, so we kill two halflings with one stone.  Bring back the elk livers when you're done.")
    SetStepComplete(Spawn, 192, 3)
	elseif HasQuest(Spawn, 192) and GetQuestStep(Spawn, 192) == 4 then
		AddConversationOption(conversation, "Okay, livers!")
	  StartConversation(conversation, NPC, Spawn, "Livers!  Kill the elk and take em for the pot.  They eatin' up all the plants here in Seaside Glade, out past the barricades. Return when you get 'em.")
    SetStepComplete(Spawn, 192, 4)
	elseif HasQuest(Spawn, 192) and GetQuestStep(Spawn, 192) == 5 then
		AddConversationOption(conversation, "Back to Tayil!")
	  StartConversation(conversation, NPC, Spawn, "Heeheehee!  Toss 'em in and smell the Gorga magic.  The stew is done now!  Head back to Tayil, she's waitin' for ya.")
		SetStepComplete(Spawn, 192, 5)
	elseif not HasQuest(Spawn, 192) and HasCompletedQuest(Spawn, 192) then
		AddConversationOption(conversation, "Uh yeah, livers!")
		StartConversation(conversation, NPC, Spawn, "Mmm, this stew is yums. Livers!")
	end
end

function convo_1(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "So what are we making here?", "convo_2")
	StartConversation(conversation, NPC, Spawn, "Ahh yes, " .. GetName(Spawn) .. ", Tayil said you were comin'.  Good then, Gorga can stir the pot while you goes to collect more ingredients.  Heeheehee!")
end

function convo_2(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll get some bees.")
	StartConversation(conversation, NPC, Spawn, "Seaside Stew!  Only a couple things we still needs to get. First is the buzzers, buggin' Gorga they are.  Not sure how they taste, but less of 'em is better.  Be sure to pluck out the wings slowly, the last buzz is the best buzz.")
	SetStepComplete(Spawn, 192, 1)
end
