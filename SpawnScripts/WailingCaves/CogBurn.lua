local timerslow = math.random(8000, 17000)

function spawn(NPC)
  SetPlayerProximityFunction(NPC, 10, "InRange")
  SetTimer(NPC)
end

function SetTimer(NPC)
  local choice = math.random(1, 2)

  if choice == 1 then
    AddTimer(NPC, timerslow, "DoAnimation1")
  elseif choice == 2 then
    AddTimer(NPC, timerslow, "DoAnimation2")
  end
end

function hailed(NPC, Spawn)
  local conversation = CreateConversation()

  if not HasQuest(Spawn, 186) and HasCompletedQuest(Spawn, 186) then
	AddConversationOption(conversation, "Sure.")
	StartConversation(conversation, NPC, Spawn, "Hello again! Lovely day for a bit of doom, wouldn't you say?")
  end

  if not HasQuest(Spawn, 186) and not HasCompletedQuest(Spawn, 186) then
	AddConversationOption(conversation, "I have to smash them?", "Option1")
	StartConversation(conversation, NPC, Spawn, "You're just in time!  Yes, yes, just in time to help me continue my research.  With the popping and smoke, poofing!  So, so very exciting!  All you have to do is fetch me the smashed remains of these undead orcs.")
  end

  if HasQuest(Spawn, 186) and not HasCompletedQuest(Spawn, 186) then
	AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, NPC, Spawn, "What!?  No smoldering, popping boom!  I'm almost done!  I've 78% of component A; 12% of ingredient B; and all I need now is the last 15% of sample D!  Go, go, go get me my stuff!  ")
  end
end

function Option1(NPC, Spawn)
  local conversation = CreateConversation()

  AddConversationOption(conversation, "That sounds dreadful!", "Option2")
  StartConversation(conversation, NPC, Spawn, "Of course you have to smash them before they're any good to me.  Nothing worse than components trying to eliminate the tinker! We don't want that to happen again, I'm telling you.  I was not amused.")
end

function Option2(NPC, Spawn)
  local conversation = CreateConversation()

  AddConversationOption(conversation, "Ok.")
  StartConversation(conversation, NPC, Spawn, "Good, good!  I'm glad we agree. You fetch me what I need, and I'll see what I can do for you.  You can trust me ... can't you?  Oh, no matter.  ")
  OfferQuest(NPC, Spawn, 186)
end

function DoAnimation1(NPC)
  PlayAnimation(NPC, 12978)
  SetTimer(NPC)
end

function DoAnimation2(NPC)
  PlayAnimation(NPC, 13056)
  SetTimer(NPC)
end

function InRange(NPC, Spawn)
  Say(NPC, "How fortunate for me!  More adventurers!  Whee! Come now, come here.")
  FaceTarget(NPC, Spawn)
  PlayAnimation(NPC, 10843, Spawn, 2)
end