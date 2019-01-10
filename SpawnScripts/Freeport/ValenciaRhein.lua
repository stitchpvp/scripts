function hailed(NPC, Spawn)
 local choice = math.random(1, 4)
  if choice == 1 then
    Say(NPC, "\"House trained?\" What's that mean?", Spawn)
    PlayAnimation(NPC, 11214, Spawn)
  elseif choice == 2 then
    Say(NPC, "Yeah, that particular one was, uh, bred to have three legs.", Spawn)
	PlayAnimation(NPC, 12030, Spawn)
  elseif choice == 2 then
    Say(NPC, "Just don't feed 'em after midnight.", Spawn)
	PlayAnimation(NPC, 13304, Spawn)
  elseif choice == 2 then
    Say(NPC, "This isn't a petting zoon. Either buy something or get lost.", Spawn)
	PlayAnimation(NPC, 12187, Spawn)
  end
end
