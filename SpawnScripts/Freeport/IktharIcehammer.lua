function hailed(NPC, Spawn)
 local choice = math.random(1, 4)

  if choice == 1 then
    Say(NPC, "You can always go with the chain over the vanguard.  It's cheaper, but tell me, will you buy yourself a new life?", Spawn)
    PlayAnimation(NPC, 12182, Spawn)
  elseif choice == 2 then
    Say(NPC, "What can I do to convince you to walk out of here with that plate mail suit you've been checking out?", Spawn)
	PlayAnimation(NPC, 13304, Spawn)
  elseif choice == 3 then
    Say(NPC, "Would you like to see all of the colors that the suits come in?  I think we have a lavender leather suit in the back.", Spawn)
	PlayAnimation(NPC, 11152, Spawn)
  elseif choice == 4 then
    Say(NPC, "Please stop embarrassing yourself and purchase a real suit of armor. Are those rags the best you have?", Spawn)
	PlayAnimation(NPC, 12187, Spawn)
  end
end
