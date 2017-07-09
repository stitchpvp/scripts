function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
	local choice = math.random(1, 6)
	if choice == 1 then
    Say(NPC, "We should storm the Militia house, when Hazran least expects it.", Spawn)
	elseif choice == 2 then
	  Say(NPC, "The Militia have gone too far this time!", Spawn)
  elseif choice == 3 then
    Say(NPC, "We need to stand up to the militia, and we need to do it now!", Spawn)
  elseif choice == 4
    Say(NPC, "The Militia beat my brother bloody. It's payback time.", Spawn)
  elseif choice == 5
    Say(NPC, "We've got to teach those Militia scum a lesson.", Spawn)
  elseif choice == 6
    Say(NPC, "Ever since Lucan's return, we've been blamed for the civil war and treated like dirt.", Spawn)
  elseif choice == 7
    Say(NPC, "I've had it with the Militia. The Dreadnaughts have more respect than this.", Spawn)  
  end
end