function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
	local choice = math.random(1, 3)
	if choice == 1 then
    Say(NPC, "Watch out! We ain't training with sticks here!", Spawn)
	elseif choice == 2 then
	  Say(NPC, "We'll be even better than those old Steel Warriors.", Spawn)
  elseif choice == 3 then
    Say(NPC, "Yeah I'm good at this!", Spawn)
  end
end
