function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
	local choice = math.random(1, 2)
	if choice == 1 then
    Say(NPC, "Chopping, chopping, Chopping! This is an excellent way to take ones mind off things!", Spawn)
	elseif choice == 2 then
	  Say(NPC, "It may not seem effective, but trust me it is!", Spawn)
  end
end    