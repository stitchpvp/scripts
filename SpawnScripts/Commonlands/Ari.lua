function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
	local choice = math.random(1, 4)
	if choice == 1 then
    Say(NPC, "Do you have business with the Freeport Militia?", Spawn)
    PlayAnimation(NPC, 13056, Spawn, 1)
	elseif choice == 2 then
	  Say(NPC, "All praises to the Overloard. The Militia protects loyal citizens of Freeport.", Spawn)
    PlayAnimation(NPC, 10815, Spawn, 1)
  elseif choice == 3 then
    Say(NPC, "Do not challenge my authority, citizen. In Freeport, the Overlord's word is law!", Spawn)
    PlayAnimation(NPC, 11649, Spawn, 1)
  elseif choice == 4 then
    Say(NPC, "The Overlord commands me to patrol this area, and so I must.", Spawn)
    PlayAnimation(NPC, 10815, Spawn, 1)
  end
end
