function hailed(NPC, Spawn)
  local choice = math.random(1, 4)
  
  if choice == 1 then
	Say(NPC, "Do not challenge my authority, citizen.  In Freeport, the Overlord's word is law!", Spawn)
	PlayAnimation(NPC, 12187, Spawn)
  elseif choice == 2 then
	Say(NPC, "The Overlord commands me to patrol this area, and so I must.", Spawn)
	PlayAnimation(NPC, 13056, Spawn)
  elseif choice == 3 then
	Say(NPC, "Do you have business with the Freeport Militia?", Spawn)
	PlayAnimation(NPC, 11649, Spawn)
  elseif choice == 4 then
	Say(NPC, "All praises to the Overlord.  The Militia protects loyal citizens of Freeport.", Spawn)
	PlayAnimation(NPC, 12168, Spawn)
  end
end