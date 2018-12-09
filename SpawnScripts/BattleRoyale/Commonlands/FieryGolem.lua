function spawn(NPC, Spawn)
  local players = GetPlayersInZone(GetZone(NPC))
  spoke = false
	for index, player in pairs(players) do
		SendPopUpMessage(player, "A fiery golem have spawned at a random location and let out a monstrous roar! Dare challenging it and you will be rewarded!", 255, 0, 0)
		SendMessage(player, "A fiery golem have spawned at a random location and let out a monstrous roar! Dare challenging it and you will be rewarded!", "red")
	end
end

function healthchanged(NPC, Spawn)
  local health_percent = GetHP(NPC) / GetMaxHP(NPC)
  if health_percent <= 0.50 and spoke == false then
    spoke = true
    local players = GetPlayersInZone(GetZone(NPC))
  	for index, player in pairs(players) do
      SendPopUpMessage(player, "A fiery golem's health is deteriorating...", 255, 0, 0)
      SendMessage(player, "A fiery golem's health is deteriorating...", "red")
    end
	end
end

function death(NPC, Spawn)
  local players = GetPlayersInZone(GetZone(NPC))
  spoke = false
	for index, player in pairs(players) do
		SendPopUpMessage(player, "A fiery golem was slained by " .. GetName(Spawn) .. "!", 255, 0, 0)
		SendMessage(player, "A fiery golem was slained by " .. GetName(Spawn) .. "!", "red")
	end
end
