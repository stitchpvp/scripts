function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
	local choice = math.random(1, 2)
	if choice == 1 then
    Say(NPC, "Please do you have any water?", Spawn)
    PlayAnimation(NPC, 10844, Spawn, 1)
	elseif choice == 2 then
	  Say(NPC, "There is a crazed Elemental ontop the lake preventing me from fetching any water!", Spawn)
    PlayAnimation(NPC, 12031, Spawn, 1)
  end
end