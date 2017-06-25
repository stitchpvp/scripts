function hailed(npc, player)
  FaceTarget(npc, player)

  local introduction = "Yes! Step closer. I take it you're looking for transportation to Antonica? Consider yourself a bit of a 'thrillseeker', do you? Ha! Only kidding, the entire process is perfectly harmless. Step up, take a shard!"

  local conversation = CreateConversation()
  AddConversationOption(conversation, "What? Those look like rocks.", "ExplainYourself")
  AddConversationOption(conversation, "Just give me the shard.", "GiveShard")
  AddConversationOption(conversation, "Uh.. I think I'll find another way.")
  StartConversation(conversation, npc, player, introduction)

  Emote(npc, "reaches into her robe and pulls out several small shards of rock.", player, player)
  PlayAnimation(npc, 11255, player, 1)
end

function GiveShard(npc, player)
  FaceTarget(npc, player)

  Say(npc, "Yes! Excellent! Stay near the spire, and in a short time you'll be whisked away to the Plane of Und - er, Antonica. Just a slip of the tongue. I'll be over here praying.", player)
  PlayAnimation(npc, 12182, player, 1)

  SummonItem(player, 6575, 1)
end

function ExplainYourself(npc, player)
  FaceTarget(npc, player)

  local message = "These SHARDS may not look it, but they contain much power. Long ago, they were blessed by Brell Serilis, empowering them with the capability of teleportation. With prayer and devotion to the Duke of Underfoot, I can use this 'rock' to send you to far away places."

  local conversation = CreateConversation()
  AddConversationOption(conversation, "Makes sense. I'll take a shard.", "GiveShard")
  AddConversationOption(conversation, "Neat.")
  StartConversation(conversation, npc, player, message)

  Emote(npc, "presents the shards to you, covered in what you hope is only mud.", player, player)
end