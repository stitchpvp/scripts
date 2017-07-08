function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
	local choice = math.random(1, 2)
	if choice == 1 then
    Say(NPC, "What can I get for you today?", Spawn)
	elseif choice == 2 then
	  Say(NPC, "What's your poison?", Spawn)
  end
end    