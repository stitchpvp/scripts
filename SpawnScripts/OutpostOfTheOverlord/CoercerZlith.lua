function hailed(NPC, Spawn)
	local conversation = CreateConversation()

  if HasQuest(Spawn, 194) and GetQuestStep(Spawn, 194) == 1 then
	  AddConversationOption(conversation, "And you want me to...?", "begin_step_1")
	  AddConversationOption(conversation, "Not right now.")
	  StartConversation(conversation, NPC, Spawn, "Sssso " .. GetName(Spawn) .. ", ready for a little sabotage? The mine is inside the Wilderwood in the far eastern corner.")
  elseif not HasQuest(Spawn, 194) and not HasCompletedQuest(Spawn, 194) then
    AddConversationOption(conversation, "Very well.")
    StartConversation(conversation, NPC, Spawn, "You are not yet ready to take on the tasks I will offer you. Return to Tayil N'Velex outside Sythor's Spire if you are unsure how to prepare yourself.")
  elseif HasQuest(Spawn, 194) and GetQuestStep(Spawn, 193) == 2 then
		AddConversationOption(conversation, "Okay, I'll be back.")
	  StartConversation(conversation, NPC, Spawn, "The mine is north up the ssslope into the Wilderwood and then eassst. This should definitely cause the disstraction we need for our final attack.")
  elseif HasQuest(Spawn, 194) and GetQuestStep(Spawn, 193) == 4 then
    AddConversationOption(conversation, "Okay, I'll keep looking.")
    StartConversation(conversation, NPC, Spawn, "The Tunarian horse sentriesss should be patrolling around the Wilderwood to the north. Return to me when you have dealt with them.")
  elseif HasQuest(Spawn, 194) and GetQuestStep(Spawn, 193) == 5 then
    AddConversationOption(conversation, "I won't.")
    StartConversation(conversation, NPC, Spawn, "You have done enough, " .. GetName(Spawn) .. ". Tunarian reinforcementsss are on their way to the Wilderwood. Our time for attack is now! Tayil will be glad to hear of your work. Speaking of Tayil, take these sssealed orders. She sssent them for you, and if I were you I would not ignore them.")
  elseif HasQuest(Spawn, 194) and GetQuestStep(Spawn, 193) == 3 then
    AddConversationOption(conversation, "Yes, those horse sentries have been a thorn in my side.", "begin_step_2")
  	AddConversationOption(conversation, "Not now.")
  	StartConversation(conversation, NPC, Spawn, "Nice work! As you probably noticed, there are additional Tunarian horse sentriesss being sssent into the Wilderwood to check on the mine. We need another distraction to thin out the Qeynosian forces even more. It's time to deal with those meddling sentriesss once and for all.")
  elseif not HasQuest(Spawn, 194) and HasCompletedQuest(Spawn, 194) then
    if not HasItem(Spawn, 12044) then
      AddConversationOption(conversation, "I need Tayil's sealed orders.", "summon_orders")
    end
    AddConversationOption(conversation, "Goodbye.")
    StartConversation(conversation, NPC, Spawn, "You've done well, " .. GetName(Spawn) .. ". The horse sentriesss were spotted moving into the Wilderwood from the north. The Qeynosian forces are thinning.")
  end
end

function begin_step_1(NPC, Spawn)
  local conversation = CreateConversation()

  AddConversationOption(conversation, "Consider it done!")
  StartConversation(conversation, NPC, Spawn, "Head in there and sstir up the hornet's nest. Take out sssome of their miners, and while you're at it, grab some of the loose ore around the mine. Tayil wants to know what it is that they're mining.")
  SetStepComplete(Spawn, 194, 1)
end

function begin_step_2(NPC, Spawn)
  local conversation = CreateConversation()

  AddConversationOption(conversation, "Very well, I'm heading back in.")
  StartConversation(conversation, "Head back into the Wilderwood and take out sssome of these horse sentries. The more you slay, the more Qeynosians will be sent to investigate, which will provide our chance to attack. Return to me when the deed is done. By the way, I'll take those ore samples and make sssure they find their way to Tayil.")
  SetStepComplete(Spawn, 194, 3)
end
