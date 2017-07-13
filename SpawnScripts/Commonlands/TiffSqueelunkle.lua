local timerslow = math.random(8000, 17000)
local timerfast = math.random(1000, 3000)
function spawn(NPC)
  SetTimer(NPC)
  SetPlayerProximityFunction(NPC, 10, "InRange")
  PlayAnimation(NPC, 221)
end

function SetTimer(NPC)
  local choice = math.random(1, 2)

  if choice == 1 then
    AddTimer(NPC, timerslow, "DoAnimation1")
  elseif choice == 2 then
    AddTimer(NPC, timerfast, "DoAnimation2")

  end
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
Say(NPC, "Psst!  You there! C'mere and give me a hand.", Spawn)
FaceTarget(NPC, Spawn)
PlayAnimation(NPC, 10843, Spawn, 1)
end



function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
  PlayAnimation(NPC, 220, Spawn, 1))
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What are you going on about?", "Option1")
	AddConversationOption(conversation, "Perfect fit for what, little bit?", "Option2")
	AddConversationOption(conversation, "I don't think so.")
	StartConversation(conversation, NPC, Spawn, "You are a perfect fit!  No doubt of that cog being wrong sized, nuh uh.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I have no doubt.", "Option3")
	AddConversationOption(conversation, "Anyway, as you were saying...", "Option4")
	StartConversation(conversation, NPC, Spawn, "I have need of you!  I'm a member of the Seafury Buccaneers, and we... I know what you're thinking, but I am very useful at sea!  Any mechanical whos-its break down durin' travel and Tiff is on it like stink on a sewer rat.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Wait!  What am I doing?", "Option5")
	AddConversationOption(conversation, "I never agreed to anything.", "Option6")
	StartConversation(conversation, NPC, Spawn, "Uh... Oh, yes.  You're useful 'n smart!  we're to investigate these smugglers 'ere and see what and who is behind their recent growth in number 'n purse. 'Nfringin' on our teritry, they are.  I have the clothes of a courier 'ere for you to wear when you go in.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "You have two hands.", "Option7")
	AddConversationOption(conversation, "You need to find someone else.")
	StartConversation(conversation, NPC, Spawn, "Huh?  Keep up 'ere!  I need you to go to the smuggler's camp.  I'll reward you, naturally.  I promise!  Break my gears, and curse my mind!  It's just that I've been spotted by 'em several times snoopin' around 'n if I get snagged again they'll sure as Prexxus take my other hand, too!")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Uh, kaaay.  So what should I be looking for?", "Option8")
	StartConversation(conversation, NPC, Spawn, "Do not distract me from the matter.  You're the one that wanted to help me!")
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I can do that.", "Option9")
	StartConversation(conversation, NPC, Spawn, "Clues, of course!  Who is funding 'em.  What're they shippin'.  That kinda' stuff.")
end

function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'm not promising anything.")
	StartConversation(conversation, NPC, Spawn, "Now wear this outfit so they will not suspect you.  They are the clothes of the last courier to have come through.  Careful, they're worn through in parts.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	StartConversation(conversation, NPC, Spawn, "But I need you to go into the smuggler's camp!  I'll reward you, naturally.  I promise!  Break my gears, and curse my mind!  It's just that I've been spotted by 'em several times snoopin' around 'n if I get snagged again they'll sure as Prexxus take my other hand, too!")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	StartConversation(conversation, NPC, Spawn, "Uh... Oh, yes.  You're useful 'n smart!  we're to investigate these smugglers 'ere and see what and who is behind their recent growth in number 'n purse. 'Nfringin' on our teritry, they are.  I have the clothes of a courier 'ere for you to wear when you go in.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I have no doubt.", "Option10")
	AddConversationOption(conversation, "Anyway, as you were saying...", "Option11")
	StartConversation(conversation, NPC, Spawn, "I have need of you!  I'm a member of the Seafury Buccaneers, and we... I know what you're thinking, but I am very useful at sea!  Any mechanical whos-its break down durin' travel and Tiff is on it like stink on a sewer rat.")
end

function Option10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Wait!  What am I doing?", "Option12")
	StartConversation(conversation, NPC, Spawn, "Uh... Oh, yes.  You're useful 'n smart!  we're to investigate these smugglers 'ere and see what and who is behind their recent growth in number 'n purse. 'Nfringin' on our teritry, they are.  I have the clothes of a courier 'ere for you to wear when you go in.")
end

function Option12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "You have two hands.", "Option13")
	StartConversation(conversation, NPC, Spawn, "Huh?  Keep up 'ere!  I need you to go to the smuggler's camp.  I'll reward you, naturally.  I promise!  Break my gears, and curse my mind!  It's just that I've been spotted by 'em several times snoopin' around 'n if I get snagged again they'll sure as Prexxus take my other hand, too!")
end

function Option13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Wow.  You're confused.")
	StartConversation(conversation, NPC, Spawn, "Do not distract me from the matter.  You're the one that wanted to help me!")
end

function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I never agreed to anything.", "Option14")
	StartConversation(conversation, NPC, Spawn, "Uh... Oh, yes.  You're useful 'n smart!  we're to investigate these smugglers 'ere and see what and who is behind their recent growth in number 'n purse. 'Nfringin' on our teritry, they are.  I have the clothes of a courier 'ere for you to wear when you go in.")
end

function Option14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
  PlayAnimation(NPC, 219, Spawn, 1)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "So what should I be looking for?")
	StartConversation(conversation, NPC, Spawn, "But I need you to go into the smuggler's camp!  I'll reward you, naturally.  I promise!  Break my gears, and curse my mind!  It's just that I've been spotted by 'em several times snoopin' around 'n if I get snagged again they'll sure as Prexxus take my other hand, too!")
end
