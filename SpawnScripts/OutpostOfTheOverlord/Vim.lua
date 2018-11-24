function hailed(NPC, Spawn)
  local choice = math.random(1, 2)

  if choice == 1 then
    Say(NPC, "I am busy right now...", Spawn)
  	PlayAnimation(NPC, 11881, Spawn)
  elseif choice == 2 then
    Say(NPC, "The Far Journey is a beautiful ship, ain't she?", Spawn)
  	PlayAnimation(NPC, 12286, Spawn)
  end
end
