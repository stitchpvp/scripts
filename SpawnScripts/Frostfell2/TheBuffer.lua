item_list = {
  [26] = {174693, 174694, 174697, 174700, 174703, 174706, 174698, 133998, 170655, 170655, 151304, 151304, 151312, 151319, 151319, 151302, 151302, 184248, 71855, 54768}
}

function hailed(NPC, Player)
  Emote(NPC, "gazes at you with cold, lifeless eyes.", Player)

  if GetLevel(Player) < 25 then
    local conversation = CreateConversation()
    AddConversationOption(conversation, "I could use some buffs.", "BuffMeBro")
    AddConversationOption(conversation, "I'm okay.")
    StartConversation(conversation, NPC, Player, "What is it you ask of me? Like all others, do you seek the buffs I have to offer?")
  end
end

function BuffMeBro(NPC, Player)
  local conversation = CreateConversation()
  AddConversationOption(conversation, "Noted.", "BuffPlayer")
  StartConversation(conversation, NPC, Player, "Very well, but know this: I've grown weary of war and will not tolerate attacks upon others in my vicinity. Do not challenge me. The outcome will not be in your favor.")
end

function BuffPlayer(NPC, Player)
  local AdventureClass = GetClass(Player)

  SetPlayerLevel(Player, 25)

  if item_list[AdventureClass] ~= nil then
    for i, item in ipairs(item_list[AdventureClass]) do
      SummonItem(Player, item)
    end
  end
end