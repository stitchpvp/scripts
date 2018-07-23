function hailed(NPC, Spawn)
  local choice = math.random(1, 4)
  
  if choice == 1 then
	Say(NPC, "In spite of the cost living, it's still quite a popular item.", Spawn)
	PlayAnimation(NPC, 12030, Spawn)
  elseif choice == 2 then
	Say(NPC, "Hello there, kind adventurer.  My merchandise carries the seal of the Overlord himself!  Go ahead, take a look!", Spawn)
	PlayAnimation(NPC, 12168, Spawn)
  elseif choice == 3 then
	Say(NPC, "Hello! Can I offer you one of our new liffetime extended warranties for any merchandise you purchase?", Spawn)
	PlayAnimation(NPC, 10745, Spawn)
  elseif choice == 4 then
	Say(NPC, "Are you going to buy anything today, or am I just wasting my time?  This isn't a museum display you know!", Spawn)
	PlayAnimation(NPC, 13056, Spawn)
  end
end