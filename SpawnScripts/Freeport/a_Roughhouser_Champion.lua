function hailed(NPC, Spawn)
 local choice = math.random(1, 3)
  
  if choice == 1 then
    Say(NPC, "Take a gander, please. It is not often one encounters the perfect killing machine.", Spawn)
    PlayAnimation(NPC, 12182, Spawn)
  elseif choice == 2 then
    Say(NPC, "Do you know who I am? Do you?! I am the Roughhouser Champion.", Spawn)
	PlayAnimation(NPC, 13295, Spawn)
  elseif choice == 3 then
    Say(NPC, "Move along before my fists dance upon your face.", Spawn)
	PlayAnimation(NPC, 13063, Spawn)
  end
end