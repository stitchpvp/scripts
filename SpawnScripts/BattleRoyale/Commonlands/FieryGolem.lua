function spawn(NPC, Spawn)
  local players = GetPlayersInZone(GetZone(NPC))
  SetTempVariable(NPC, "prevent_loop", nil)
	for index, player in pairs(players) do
		SendPopUpMessage(player, "\\#ff0000A fiery golem have spawned at a random location and let out a monstrous roar! \\#ffff00Dare challenging it and you will be rewarded!")
		SendMessage(player, "\\#ff0000A fiery golem have spawned at a random location and let out a monstrous roar! \\#ffff00Dare challenging it and you will be rewarded!")
	end
end

function attacked(NPC, Spawn)
  local players = GetPlayersInZone(GetZone(NPC))
  for index, player in pairs(players) do
    SendPopUpMessage(player, "\\#ffffffA fiery golem was \\#ff0000attacked \\#ffffffby \\#ffff00" .. GetName(Spawn) .. "\\#ffffff!")
    SendMessage(player, "\\#ffffffA fiery golem was \\#ff0000attacked \\#ffffffby \\#ffff00" .. GetName(Spawn) .. "\\#ffffff!")
  end
end

function healthchanged(NPC, Spawn)
  local health_percent = GetHP(NPC) / GetMaxHP(NPC)
  if health_percent <= 0.50 and GetTempVariable(NPC, "prevent_loop") == nil then
    spoke = true
    local players = GetPlayersInZone(GetZone(NPC))
  	for index, player in pairs(players) do
      SendPopUpMessage(player, "\\#ffffffA fiery golem's health is \\#ff0000deteriorating...")
      SendMessage(player, "\\#ffffffA fiery golem's health is \\#ff0000deteriorating...")
      SetTempVariable(NPC, "prevent_loop", "true")
    end
	end
end

function death(NPC, Spawn)
  local players = GetPlayersInZone(GetZone(NPC))
  SetTempVariable(NPC, "prevent_loop", nil)
	for index, player in pairs(players) do
		SendPopUpMessage(player, "\\#ffffffA fiery golem was \\#ff0000slained \\#ffffffby \\#ffff00" .. GetName(Spawn) .. "\\#ffffff!")
		SendMessage(player, "\\#ffffffA fiery golem was \\#ff0000slained \\#ffffffby \\#ffff00" .. GetName(Spawn) .. "\\#ffffff!")
	end
end
