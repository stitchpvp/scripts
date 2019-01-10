function hailed(NPC, Spawn)
 local choice = math.random(1, 2)

  if choice == 1 then
    Say(NPC, "Hello there, kind adventurer. My merchandise carries the seal of the Overlord himself!  Go ahead, take a look!", Spawn)
    PlayAnimation(NPC, 12167, Spawn)
  elseif choice == 2 then
    Say(NPC, "Hello! Can I offer you one of our new lifetime extended warranties for any merchandise you purchase?  ", Spawn)
	PlayAnimation(NPC, 12168, Spawn)
  end
end
