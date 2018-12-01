function spawn(NPC)
  ProvidesQuest(NPC, 184)
  ProvidesQuest(NPC, 192)
  ProvidesQuest(NPC, 193)
  ProvidesQuest(NPC, 194)
end

function hailed(NPC, Spawn)
	local conversation = CreateConversation()

  if not HasQuest(Spawn, 184) and not HasCompletedQuest(Spawn, 184) then
    AddConversationOption(conversation, "You were expecting me? Who are you?", "part1_intro")
	  AddConversationOption(conversation, "How do I leave the island?", "leave")
	  AddConversationOption(conversation, "I should be going.")
	  StartConversation(conversation, NPC, Spawn, "Ah, there you are, " .. GetName(Spawn) .. ". I have been expecting you. There is much work ahead of us in establishing Freeport's dominance over this island. The Overlord's troops have secured the outpost, but there is a growing nuisance on the other side of the island that must be addressed. That is where you come in.")
  elseif HasQuest(Spawn, 184) and GetQuestStep(Spawn, 184) == 1 or GetQuestStep(Spawn, 184) == 2 or GetQuestStep(Spawn, 184) == 3 then
	  AddConversationOption(conversation, "I haven't completed my training yet, I'll return to Darg.")
    AddConversationOption(conversation, "How do I leave the island?", "leave")
	  AddConversationOption(conversation, "Not just yet.")
	  StartConversation(conversation, NPC, Spawn, "So, " .. GetName(Spawn) .. ", are you ready to learn more about the outpost and perform your first service for the Overlord?")
  elseif HasQuest(Spawn, 184) and GetQuestStep(Spawn, 184) == 4 then
    AddConversationOption(conversation, "I am ready.", "completed_quest")
    AddConversationOption(conversation, "How do I leave the island?", "leave")
	  AddConversationOption(conversation, "Not just yet.")
	  StartConversation(conversation, NPC, Spawn, "So, " .. GetName(Spawn) .. ", are you ready to learn more about the outpost and perform your first service for the Overlord?")
  elseif HasCompletedQuest(Spawn, 184) and not HasQuest(Spawn, 192) and not HasCompletedQuest(Spawn, 192) then
    AddConversationOption(conversation, "I'll keep that in mind. So who are the inhabitants?", "quest_2_begin")
  	AddConversationOption(conversation, "We'll discuss this later.")
  	StartConversation(conversation, NPC, Spawn, "This outpost was recently established as a training ground for potential citizens of Freeport to hone their skills. Our first scouts on the island reported it as being uninhabited, perfect for our needs. It soon became clear that the initial reports were incorrect, and those scouts have been permanently reassigned to the bottom of the bay. Such is the price of failure.")
  elseif HasQuest(Spawn, 192) and GetQuestStep(Spawn, 192) == 1 or GetQuestStep(Spawn, 192) == 2 or GetQuestStep(Spawn, 192) == 3 or GetQuestStep(Spawn, 192) == 4 or GetQuestStep(Spawn, 192) == 5 then
	  AddConversationOption(conversation, "I haven't finished working with Gorga yet.")
    AddConversationOption(conversation, "How do I leave the island?", "leave")
	  AddConversationOption(conversation, "I still have some more hunting to do.")
    StartConversation(conversation, NPC, Spawn, "Did you enjoy your hunting in the Seaside Glade with Chef Gorga?")
  elseif HasQuest(Spawn, 192) and GetQuestStep(Spawn, 192) == 6 then
	  AddConversationOption(conversation, "I helped Gorga gather supplies.", "gorga_completed")
    AddConversationOption(conversation, "How do I leave the island?", "leave")
	  AddConversationOption(conversation, "I still have some more hunting to do.")
    StartConversation(conversation, NPC, Spawn, "Did you enjoy your hunting in the Seaside Glade with Chef Gorga?")
  elseif HasCompletedQuest(Spawn, 192) and not HasQuest(Spawn, 193) then
    AddConversationOption(conversation, "I am ready for my next assignment", "quest_3_begin")
    AddConversationOption(conversation, "How do I leave the island?", "leave")
	  AddConversationOption(conversation, "Not just yet.")
    StartConversation(conversation, NPC, Spawn, "So, " .. GetName(Spawn) .. ", are you ready to prove your worth again?")
  elseif HasQuest(Spawn, 193) and GetQuestStep(Spawn, 193) == 1 or GetQuestStep(Spawn, 193) == 2 or GetQuestStep(Spawn, 193) == 3 or GetQuestStep(Spawn, 193) == 4 or GetQuestStep(Spawn, 193) == 5 then
    AddConversationOption(conversation, "How do I leave the island?", "leave")
    AddConversationOption(conversation, "I have more to learn from him.")
    StartConversation(conversation, NPC, Spawn, "Hello again, " .. GetName(Spawn) .. ". Was your work with Assassin Vamir successful?")
  elseif HasQuest(Spawn, 194) and GetQuestStep(Spawn, 194) == 1 or GetQuestStep(Spawn, 194) == 2 or GetQuestStep(Spawn, 194) == 3 or GetQuestStep(Spawn, 194) == 4 or GetQuestStep(Spawn, 194) == 5 then
    AddConversationOption(conversation, "How do I leave the island?", "leave")
    AddConversationOption(conversation, "Not yet.")
    StartConversation(conversation, NPC, Spawn, "Have you succeeded in disrupting Qeynosian activities at the mine?")
  end
end

function completed_quest(NPC, Spawn)
  local conversation = CreateConversation()
  AddConversationOption(conversation, "I'll keep that in mind. So who are the inhabitants?", "Option4")
	AddConversationOption(conversation, "We'll discuss this later.")
	StartConversation(conversation, NPC, Spawn, "This outpost was recently established as a training ground for potential citizens of Freeport to hone their skills. Our first scouts on the island reported it as being uninhabited, perfect for our needs. It soon became clear that the initial reports were incorrect, and those scouts have been permanently reassigned to the bottom of the bay. Such is the price of failure.")
  SetStepComplete(Spawn, 184, 4)
end

function gorga_completed(NPC, Spawn)
  local conversation = CreateConversation()
  AddConversationOption(conversation, "Thank you, Tayil.")
	StartConversation(conversation, NPC, Spawn, "Gorga was impressed with your handiwork. I'm sure the outpost Militia guards will be pleased with her stew, though I can't stomach troll cooking myself. You show potential indeed, " .. GetName(Spawn) .. ". As promised, here is your reward.")
  SetStepComplete(Spawn, 192, 6)
end

function leave(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Where can I find Captain Varlos?", "leave_varlos")
	StartConversation(conversation, NPC, Spawn, "If you feel you are prepared then you are allowed to leave the outpost whenever you desire. To do so simply speak with Captain Varlos. We have a deal worked out with him and he will bring you to the grand city of Freeport.")
end

function leave_varlos(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "The beach is just southeast of here. Captain Varlos' ship will be on the northern dock. He can be found on his ship.")
end

function part1_intro(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'm ready to begin my adventures.", "part1_pledge")
	AddConversationOption(conversation, "Who is the Overlord?", "part1_overlord")
	AddConversationOption(conversation, "I will return for instruction later.")
	StartConversation(conversation, NPC, Spawn, "I am Tayil N'Velex, attendant and confidante of the Overlord. I am here to ensure that our operation on this island is successful. You, on the other hand, will be assisting us with some field work to help prepare you for life as a citizen of Freeport.")
end

function part1_overlord(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I will remember that. What can you tell me of Freeport?", "part1_freeport")
	AddConversationOption(conversation, "I'll hear more of this later.")
	StartConversation(conversation, NPC, Spawn, "The Overlord is the fiercely courageous ruler of Freeport. A statue of his glorious visage graces the pond in the center of the outpost. Though he is merciless to his enemies, he is generous to those who serve him. Pray you never do anything to fall from his grace, Outpost.")
end

function part1_freeport(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What is Qeynos?", "part1_qeynos")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "Freeport is the center of power and commerce on Norrath. The city sits on the eastern edge of the continent of D'Lere. This grand city shall be your home here on Norrath, should you prove yourself worthy. If not, you can cower and beg for shelter at the gates of Qeynos.")
end

function part1_qeynos(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you for the advice, Tayil.", "part1_pledge")
	StartConversation(conversation, NPC, Spawn, "The city of Qeynos is the enemy of Freeport. It is a weak land ruled by an incompetent queen, Antonia Bayle. I've had my share of battles with her and her pet kerra, I assure you. Qeynosians try to spread lies about the Overlord and portray him as some kind of power-mad tyrant. Don't believe their propaganda, Outpost!")
end

function part1_pledge(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I pledge myself to Freeport.", "part1_pledged")
	AddConversationOption(conversation, "Not just yet.")
	StartConversation(conversation, NPC, Spawn, "Remember to always keep the will of the Overlord foremost in your thoughts and you will go far. The city of Freeport is a power unrivaled on Norrath, no matter what you might hear from Qeynosian riffraff. You must pledge yourself to this power and become part of it. Do this and I will reward you handsomely.")
end

function part1_pledged(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I am ready to begin.", "part1_begin")
	StartConversation(conversation, NPC, Spawn, "Excellent! There is indeed much potential in you. I think it is time to begin your training.")
end

function part1_begin(NPC, Spawn)
	local conversation = CreateConversation()

  SetStepComplete(Spawn, 183, 1)

	AddConversationOption(conversation, "I will speak with him.", "part1_confirm")
	StartConversation(conversation, NPC, Spawn, "You must be strong if you wish to serve properly. Northwest of here you can find Trainer Darg Frostwind. Speak with him about combat training and do as he tells you.")
end

function part1_confirm(NPC, Spawn)
	local conversation = CreateConversation()

  OfferQuest(NPC, Spawn, 184)

	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "In case you forget, I've written down his name and location in your quest journal.")
end

function quest_2_begin(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "So I should go wipe them out?", "quest_2_convo_1")
  AddConversationOption(conversation, "That sounds like a lot of effort.")
	StartConversation(conversation, NPC, Spawn, "The intruders are a sect of the Tunarian Alliance, a lowly order of vermin originating from Qeynos. As a true servant of the Overlord, your duty is to eliminate them. This should prove extremely useful in preparing you for the challenges that lie ahead after you leave the outpost.")
end

function quest_2_convo_1(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I am ready.", "quest_2_convo_2")
  AddConversationOption(conversation, "Perhaps later.")
	StartConversation(conversation, NPC, Spawn, "Not just yet, " .. GetName(Spawn) .. ". You will strike against those Qeynosian scum when the time is right. First we need to see if that weapon of yours is working! Are you ready for your first test?")
end

function quest_2_convo_2(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I will go help Chef Gorga.", "quest_2_convo_3")
	StartConversation(conversation, NPC, Spawn, "Go talk to Chef Gorga just past the west archway. She needs help gathering supplies to feed the members of the Freeport Militia who guard this outpost, which should provide a chance to test your combat skills. There is more to hunt on this island than just Qeynosians.")
end

function quest_2_convo_3(NPC, Spawn)
	local conversation = CreateConversation()

	StartConversation(conversation, NPC, Spawn, "Report back to me when your duties with Chef Gorga are done.")
  OfferQuest(NPC, Spawn, 192)
end

function quest_3_begin(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "You're suggesting some kind of sinister plan?", "quest_3_convo_1")
	StartConversation(conversation, NPC, Spawn, "Good, now listen closely. Though a direct attack upon your enemy can be quite satisfying, there are often more subtle means of inflicting damage. Cut off the feet and the head is sure to follow, if you get my meaning.")
end

function quest_3_convo_1(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I will go speak to Assassin Vamir.", "quest_3_convo_2")
  AddConversationOption(conversation, "I don't have time right now.")
	StartConversation(conversation, NPC, Spawn, "Indeed, cunning and subtlety are often effective. And who is more cunning and subtle than an assassin? We've established a camp through the archway to the west, at the far end of Seaside Glade. Go and speak to Assassin Vamir, who has devised a plan to strike at the heart of the Tunarians.")
end

function quest_3_convo_2(NPC, Spawn)
	local conversation = CreateConversation()

	StartConversation(conversation, NPC, Spawn, "Assassin Vamir will explain the details.  Good luck.")
  OfferQuest(NPC, Spawn, 193)
end
