function hailed(NPC, Spawn)
  local choice = math.random(1, 4)
  
  if choice == 1 then
	Say(NPC, "Hey do you see any water around here?  Oh well, who needs to wash their hands?", Spawn)
	PlayAnimation(NPC, 12240, Spawn)
  elseif choice == 2 then
	Say(NPC, "Man do I love gnome bread!  The trolls, they just love gnomes period!", Spawn)
	PlayAnimation(NPC, 11152, Spawn)
  elseif choice == 3 then
	Say(NPC, "The ogre bread takes an extra long time to bake.  Hey, they like large servings.", Spawn)
	PlayAnimation(NPC, 10745, Spawn)
  elseif choice == 4 then
	Say(NPC, "Hey you want that spicy cake to go?  Be careful, that one will singe your nose hairs!", Spawn)
	PlayAnimation(NPC, 13299, Spawn)
  end
end