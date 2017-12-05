function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
	local choice = math.random(1, 3)
	if choice == 1 then
    Say(NPC, "Hail, right back at ya.", Spawn)
	elseif choice == 2 then
	  Say(NPC, "I should be gettin' back to me wife, before she comes callin' after me... again.", Spawn)
  elseif choice == 2 then
	  Say(NPC, "Grab an ale, me friend!", Spawn)
  end
end
