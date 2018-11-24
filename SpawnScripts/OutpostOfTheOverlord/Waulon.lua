function hailed(NPC, Spawn)
  local choice = math.random(1, 2)

  if choice == 1 then
    Say(NPC, "What? Can't you see? Busy, away with ye!", Spawn)
  	PlayAnimation(NPC, 11628, Spawn)
  elseif choice == 2 then
    Say(NPC, "Where's me hat? Needs me lucky hat!", Spawn)
  	PlayAnimation(NPC, 11682, Spawn)
  end
end
