function hailed(NPC)
  local choice = math.random(1, 4)
    if choice == 1 then
      Say(NPC, "Greetings, citizen. I am on guard duty. Should you get into trouble, seek me out.", Spawn)
	  PlayAnimation(NPC, 10815, Spawn)
    elseif choice == 2 then
	  Say(NPC, "I hate the night shift!  If the gnolls don't attack now, I may die of boredom.", Spawn)
	  PlayAnimation(NPC, 11663, Spawn)
    elseif choice == 3 then
      Say(NPC, "Good day to you, citizen. All preserve Queen Antonia.", Spawn)
	  PlayAnimation(NPC, 12167, Spawn)
	elseif choice == 4 then
      Say(NPC, "Duty above all else, citizen, except honor!", Spawn)
	  PlayAnimation(NPC, 12187, Spawn)
	end
end