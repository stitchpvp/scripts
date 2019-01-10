function spawn(NPC)
  SetPlayerProximityFunction(NPC, 15, "InRange")
end

function InRange(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  Say(NPC, "Well, I can see what sort of goods we have available now.  You do have the proper scrollwork for all of this merchandise, correct?", Spawn)
  PlayAnimation(NPC, 11649, Spawn)
end

function hailed(NPC, Spawn)
  local choice = math.random(1, 4)
  if choice == 1 then
	  Say(NPC, "Well, I can see what sort of goods we have available now.  You do have the proper scrollwork for all of this merchandise, correct?", Spawn)
	  PlayAnimation(NPC, 11649, Spawn)
  elseif choice == 2 then
	  Say(NPC, "All right here's all the goods listed in the city.  If you find anything you want, let me know.", Spawn)
	  PlayAnimation(NPC, 11682, Spawn)
  elseif choice == 3 then
	  Say(NPC, "Yes, hail to you as well.  Let's get down to business shall we?", Spawn)
	  PlayAnimation(NPC, 13056, Spawn)
  elseif choice == 4 then
	  Say(NPC, "Looking for anything in particular today?  Well, let's just see what we have for sale in the city then, shall we?", Spawn)
	  PlayAnimation(NPC, 12182, Spawn)
  end
end
