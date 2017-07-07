function hailed(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
	local choice = math.random(1, 4)
	if choice == 1 then
    Say(NPC, "Greetings, Citizen. I am on Guard duty. Should you get into trouble, seek me out.", Spawn)
    PlayAnimation(NPC, 12167,Spawn, 1)
	elseif choice == 2 then
	  Say(NPC, "I hate working this shift! If the gnolls don't attack now. I may die of boredom.", Spawn)
  elseif choice == 3 then
    Say(NPC, "Duty above all else, citizen, except honor!"
    PlayAnimation(NPC, 12187, Spawn, 1)
  elseif choice == 4
    Say(NPC, "Good day to you, citizen. All preserve Queen Antonia.", Spawn)
    PlayAnimation(NPC, 12167,Spawn, 1)
  end
end