function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "How does one take up crafting?", "Option1")
  AddConversationOption(conversation, "I will return another time to learn your lesson.")
	StartConversation(conversation, NPC, Spawn, "Greetings, brave hero of the Overlord! It is my responsibility to explain how crafting and tradeskills can bring prosperity to the kingdom of Freeport. I hope I can encourage your participation in helping our city flourish. We can beat those hapless Qeynosians through our superior commerce!")
  PlayAnimation(NPC, 11682, Spawn)
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Where does one perform crafting?", "Option2")
  AddConversationOption(conversation, "I will return another time to learn your lesson.")
	StartConversation(conversation, NPC, Spawn, "Crafting, or tradeskilling as some call it, involves taking ingredients harvested or obtained in the world, mixing them with the proper fuel, and carefully following a specific recipe to create something new and useful for yourself or your fellow citizens. Just as you can gain levels by adventuring, you have a separate Artisan level that increases as you earn experience crafting.")
  PlayAnimation(NPC, 10745, Spawn)
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Can I make a variety of items?", "Option3")
  AddConversationOption(conversation, "I will return another time to learn your lesson.")
	StartConversation(conversation, NPC, Spawn, "Crafting takes place in workshops, just like the one we have here on the island. Inside this doorway you will find the fuel and devices you'll need to build, cook, scribe, sew, and create all manner of useful goods. When you arrive in our grand city, you will find the entrances to workshops scattered throughout your home village.")
  PlayAnimation(NPC, 10745, Spawn)
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What could I specialize in?", "Option4")
  AddConversationOption(conversation, "I will return another time to learn your lesson.")
	StartConversation(conversation, NPC, Spawn, "As you practice your craft you will learn to make a variety of products, but as you advance in your profession you will specialize in certain types of goods. As you acquire new recipe books, you will learn new types of items you can make.")
  PlayAnimation(NPC, 10745, Spawn)
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Where do I learn recipes?", "Option5")
  AddConversationOption(conversation, "I will return another time to learn your lesson.")
	StartConversation(conversation, NPC, Spawn, "You might choose to become a Provisioner that makes food and drink, a Woodworker that crafts totems and staves, an Armorer that forges plate and chain armor, a Sage that scribes potent spells for mages and priests, or one of many other noble professions.")
  PlayAnimation(NPC, 10745, Spawn)
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What can I do with the items I make?", "Option6")
  AddConversationOption(conversation, "I will return another time to learn your lesson.")
	StartConversation(conversation, NPC, Spawn, "Basic recipes can be bought for a small fee from a merchant near the workshops in Freeport. Rare recipes can be obtained by adventuring in the wilds of Norrath. You may want to trade goods or services with other adventurers and artisans to obtain such valuable recipes. You can view your recipe book by pressing the N key.  ")
  PlayAnimation(NPC, 10745, Spawn)
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Do you have any further advice?", "Option7")
  AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "You can either use the items yourself or make a tidy profit by selling them to others. A skilled artisan is always in demand for the goods they provide, so learn your craft well and you may build a fortune that others in Freeport can only envy!")
  PlayAnimation(NPC, 10745, Spawn)
end

function Option7(NPC, Spawn)
	local conversation = CreateConversation()

  if not HasItem(Spawn, 21177, 1) then
    SendPopUpMessage(Spawn, "You have received a book entitled Handbook of the Coalition of Tradesfolke. It will guide you toward becoming a great artisan.", 255, 255, 0)
    SendMessage(Spawn, "You have received a book entitled Handbook of the Coalition of Tradesfolke. It will guide you toward becoming a great artisan.", "white")
    SummonItem(Spawn, 21177, 1)
  end
	AddConversationOption(conversation, "Thank you for the guidance.")
	StartConversation(conversation, NPC, Spawn, "Here is a handbook that will provide you with some basic reference material to start with. Once you reach Freeport, you will find a tradeskill tutor within your local crafting workshop who can teach you more about crafting in further detail.")
  PlayAnimation(NPC, 10745, Spawn)
end
