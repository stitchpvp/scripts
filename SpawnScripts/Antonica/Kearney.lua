function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
	local choice = math.random(1, 3)
	if choice == 1 then
    Say(NPC, "Check out these skills!", Spawn)
	elseif choice == 2 then
	  Say(NPC, "We are going to be the New Steel Warriors!", Spawn)
  elseif choice == 3 then
    Say(NPC, "Nobody better get in our way.", Spawn)
  end
end