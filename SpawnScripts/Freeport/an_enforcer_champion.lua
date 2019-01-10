function hailed(NPC, Spawn)
 local choice = math.random(1, 3)

  if choice == 1 then
    Say(NPC, "Yes, yes! Something good to eat this way comes.", Spawn)
    PlayAnimation(NPC, 12182, Spawn)
  elseif choice == 2 then
    Say(NPC, "The voice in my head... THEY SAY TO EAT YOU!", Spawn)
	PlayAnimation(NPC, 11628, Spawn)
  elseif choice == 3 then
    Say(NPC, "Lookout! Ha! You are too slow for me.", Spawn)
	PlayAnimation(NPC, 10783, Spawn)
  end
end
