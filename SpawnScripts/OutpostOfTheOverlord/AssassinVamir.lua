function hailed(NPC, Spawn)
	local conversation = CreateConversation()

  if HasQuest(Spawn, 193) and GetQuestStep(Spawn, 193) == 1 then
	  AddConversationOption(conversation, "And you want me to...?", "queststep_1_convo_1")
	  AddConversationOption(conversation, "I'll come back later.")
	  StartConversation(conversation, NPC, Spawn, "Hellos " .. GetName(Spawn) .. ", Tayil sent word you were comings.  I's been scouting out the nearby areas, trying to get a better feels of what we's up against.  Beastmasters these Tunarians are, training the wild animals of the island to fight for them!")
  elseif not HasQuest(Spawn, 193) and not HasCompletedQuest(Spawn, 193) then
    AddConversationOption(conversation, "Very well.")
	  StartConversation(conversation, NPC, Spawn, "I'm not ready for you yet, adventurer.  Speak with Tayil N'Velex back at the outpost to prepare yourself for my tasks.")
  elseif HasQuest(Spawn, 193) and GetQuestStep(Spawn, 193) == 2 then
		AddConversationOption(conversation, "Okay, I'll be back.")
	  StartConversation(conversation, NPC, Spawn, "North up the slope into the Wilderwood the bears are, or west in Cliffdiver Canyon.  Kills them and return when you are done.")
	elseif HasQuest(Spawn, 193) and GetQuestStep(Spawn, 193) == 3 then
		AddConversationOption(conversation, "How do I do it?", "queststep_3_convo_1")
    AddConversationOption(conversation, "I don't have time to do this right now.")
	  StartConversation(conversation, NPC, Spawn, "The bears are dead?  Good. Nows for a tricky task, so pay attention!  The hawks you will now hunt reside high on the cliffs in Cliffdiver Canyon to the west of here.  Untils now, we've been unable to get to them.")
	elseif HasQuest(Spawn, 193) and GetQuestStep(Spawn, 193) == 4 then
    if not HasItem(Spawn, 8060) then
      AddConversationOption(conversation, "I need more mole rats!", "more_rats")
    end
		AddConversationOption(conversation, "Okay, I'll keep trying.")
	  StartConversation(conversation, NPC, Spawn, "Examine and then release the molerats from your inventory when you thinks you are in a good position to lure down the hawks in Cliffdiver Canyon to the west.  Then dispose of the hawks.")
	elseif HasQuest(Spawn, 193) and GetQuestStep(Spawn, 193) == 5 then
		AddConversationOption(conversation, "Thank you.")
	  StartConversation(conversation, NPC, Spawn, "Excellent job!  I think we's done a good job stoppings any new recruits for the Tunarians. Here, this note was just delivered to us.  I believe it is from Tayil.")
		SetStepComplete(Spawn, 193, 5)
	elseif HasQuest(Spawn, 193) and GetQuestStep(Spawn, 193) == 6 then
    if not HasItem(Spawn, 2344) then
      AddConversationOption(conversation, "I need the note Tayil wanted you to give me.", "summon_note")
    end
		AddConversationOption(conversation, "Goodbye.")
		StartConversation(conversation, NPC, Spawn, "The Tunarians won't have many animals to train because of you. Nice works!  Returns to me if you ever needs more mole rats.")
	elseif not HasQuest(Spawn, 193) and HasCompletedQuest(Spawn, 193) then
		AddConversationOption(conversation, "Goodbye.")
		StartConversation(conversation, NPC, Spawn, "The Tunarians won't have many animals to train because of you. Nice works!  Returns to me if you ever needs more mole rats.")
	end
end

function queststep_1_convo_1(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Where are these animals?", "queststep_1_convo_2")
	StartConversation(conversation, NPC, Spawn, "We's gonna cut off their resources to weaken them in the long terms, settings up our major attack after they are weakened.  If we take out their picks of the wild animals, they'll have nothing to train.")
end

function queststep_1_convo_2(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "The bears are mine!")
	StartConversation(conversation, NPC, Spawn, "They trains the bears, hawks, and wolves on the island.  The wolves are a bits too deep to touch now, but the bears and hawks are nearby so we starts with those.  First, head north up the slope into the Wilderwood or west into Cliffdiver Caynon and lay down some bears.  Returns when you are done.")
	SetStepComplete(Spawn, 193, 1)
end

function queststep_3_convo_1(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Dinner is served!")
	StartConversation(conversation, NPC, Spawn, "The cliffdiver hawks perch high up and watch for foods to attack below. I's got some food for them right here, hahaha! Take these mole rats and when you think you are in a good position below the hawks, examine them in your inventory and release one. Return if you needs more.")
	SetStepComplete(Spawn, 193, 3)
  SummonItem(Spawn, 8060, 1)
  SummonItem(Spawn, 8060, 1)
  SummonItem(Spawn, 8060, 1)
  SummonItem(Spawn, 8060, 1)
  SummonItem(Spawn, 8060, 1)
end

function more_rats(NPC, Spawn)
  local conversation = CreateConversation()
  AddConversationOption(conversation, "Dinner is served!")
  StartConversation(conversation, NPC, Spawn, "Here is some mores of the little pudgies!  Have fun.")
  SummonItem(Spawn, 8060, 1)
  SummonItem(Spawn, 8060, 1)
  SummonItem(Spawn, 8060, 1)
  SummonItem(Spawn, 8060, 1)
  SummonItem(Spawn, 8060, 1)
end

function summon_note(NPC, Spawn)
  local conversation = CreateConversation()
  AddConversationOption(conversation, "Thanks.")
  StartConversation(conversation, NPC, Spawn, "Here is the note.")
  SummonItem(Spawn, 2344, 1)
end
