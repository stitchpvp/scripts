function hailed(NPC, Spawn)
  local conversation = CreateConversation()

  AddConversationOption(conversation, "I'd like to learn about collections.", "Collections")
  AddConversationOption(conversation, "I'd like to learn about harvesting.", "Harvesting")
  AddConversationOption(conversation, "I've no time to chat right now.")
  StartConversation(conversation, NPC, Spawn, "Come closer if you want me to answer any questions you have about collections or harvesting!")
end

function Collections(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What happens next?", "Collections_2")
	StartConversation(conversation, NPC, Spawn, "Collectibles are seen as a glow rising from the ground. If you're close enough, you'll notice a question mark above it. Doube-click or right-click the glow and select Harvest. The item you gather will go into your inventory. You can examine this item in your inventory.")
end

function Collections_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "How do I complete the collection?", "Collections_3")
	StartConversation(conversation, NPC, Spawn, "Your quest journal will open up automatically to the Collections tab. Use the Add button to add that item to a collection. As you travel through Norrath, you'll find different collectibles in different areas of the world. Some items can be part of more than one collection.")
end

function Collections_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'd like to learn about harvesting and gathering now.", "Harvesting")
  AddConversationOption(conversation, "Thanks for the information.")
  StartConversation(conversation, NPC, Spawn, "Continue to gather and examine all the items you find until all the icons of that collection are highlighted in your quest journal. Then you'll be able to turn the completed collection in to a collector who will reward you with some experience. If you already have a collectible in all collections that call for it, you can sell it to a merchant to trade it to another player.")
end

function Harvesting(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What are harvestables used for?", "Harvesting_2")
  StartConversation(conversation, NPC, Spawn, "Harvestables come in five forms, each tied to its own respective skill. These skills can be seen by opening your Skills window by pressing the P key, clicking on the Skills tab and selecting your General skills. Rocks increase mining, logs increase foresting, dens increase foresting, fish increase fishing, and plants increase gathering.")
end

function Harvesting_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Why do I need to increase my harvesting skills?", "Harvesting_3")
  StartConversation(conversation, NPC, Spawn, "The items found through harvesting are the basic building blocks of tradeskills. They cannot be sold to vendors, but they can be traded or sold to other players who need them for their respective tradeskill professions. Some components that can be found through harvesting are very rare and can be worth quite a bit of money to tradeskillers.")
end

function Harvesting_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'd like to learn about collections now.", "Collections")
  AddConversationOption(conversation, "Thanks for the information.")
  StartConversation(conversation, NPC, Spawn, "The skill required to harvest in a given area increases along with the difficulty of the area. If you find that you are unable to harvest in an area you should return to a less difficult area and practice.")
end
