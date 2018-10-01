function hailed(NPC, Spawn)
  local conversation = CreateConversation()
  
  AddConversationOption(conversation, "How did a goblin get in here?  Don't you kill people?", "Option1")
  AddConversationOption(conversation, "I think I'd rather keep my money, thanks.")
  StartConversation(conversation, NPC, Spawn, "Buy ticket, you!  Only ten shiny coins! You give just ten shiny coins and maybe you get um... many shinier coins!")
end

function Option1(NPC, Spawn)
  local conversation = CreateConversation()

  AddConversationOption(conversation, "Why are potatoes funny?", "Option2")
  AddConversationOption(conversation, "On second thought, I'll be going now.")
  StartConversation(conversation, NPC, Spawn, "Gigglegibber goblins not kill people! War no fun at all. Gigglegibber goblins like shiny coins and funny things! We like frogs, fluffy kittens, potatoes... You have potatoes?")
end

function Option2(NPC, Spawn)
  local conversation = CreateConversation()

  AddConversationOption(conversation, "I'll think about it.")
  StartConversation(conversation, NPC, Spawn, "They tasty! Not funny!... though Gribbik carved funny face in a potato once.  That was funny until he eated it.  Hey! No try to tricks me with talk about potatoes.  You still pays ten shiny coins for ticket!  Buy many tickets! If you buys more maybe you win more than many shiny coins!")
end
