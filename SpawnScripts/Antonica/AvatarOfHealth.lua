function hailed(NPC, Spawn)
  if not GetTempVariable(NPC, "grummus_spawned") then
    local conversation = CreateConversation()
    AddConversationOption(conversation, "Yes, we're ready.", "Choice1")
    AddConversationOption(conversation, "I must go.", "Choice2")
    StartConversation(conversation, NPC, Spawn, "Hello " .. GetName(Spawn) .. ", you must gather enough raid force to aid me against the filth that is Avatar of Disease! Are you ready?") --[[placeholder emote]]
	SpawnSet(NPC, "visual_state", 121)
	if GetTempVariable(NPC, "grummus_spawned") ~= nil then
		AddTimer(NPC, 4000, "defaultvisual")
	end
	else
		if GetTempVariable(NPC, "say") ~= nil then
		local choice = math.random(1, 3)

		if choice == 1 then
		  Say(NPC, "Aaccck!!", Spawn)

		elseif choice == 2 then
		  Say(NPC, "Kill it!", Spawn)

		elseif choice == 3 then
      Say(NPC, "What is that thing?! Destroy it!", Spawn)
		end
	 end
  end
end

function Choice1(NPC, Spawn)
  Say(NPC, "Very well. Here it comes!")
  Emote(NPC, "points at Grummus.")
  SpawnGrummus(NPC, Spawn)
  SetInCombat(NPC, true)
  SpawnSet(NPC, "visual_state", 141)
 end

function Choice2(NPC, Spawn)
  local conversation = CreateConversation()
  StartConversation(conversation, NPC, Spawn, "That is too bad.")
  SpawnSet(NPC, "visual_state", 12216)
  AddTimer(NPC, 4000, "defaultvisual")
end

function defaultvisual(NPC)
  SpawnSet(NPC, "visual_state", 0)
end

function SpawnGrummus(Spawn, Player)
  local zone = GetZone(Spawn)
  local Grummus = SpawnMob(zone, 2520012, false, GetX(Player), GetY(Player), GetZ(Player), 90)
  AddHate(Player, Grummus, 1)
  SetTempVariable(Spawn, "grummus_spawned", "true")
  SetTempVariable(Spawn, "say", "true")
end
