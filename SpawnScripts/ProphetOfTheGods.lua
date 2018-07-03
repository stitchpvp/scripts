function spawn(NPC)
  SetTempVariable(NPC, "avatar_spawned", nil)
  SetTempVariable(NPC, "choice_made", nil)
  SpawnSet(NPC, "action_state", 0)
  SpawnSet(NPC, "mood_state", 0)
  SpawnSet(NPC, "visual_state", 19715)
end

function respawn(NPC)
  spawn(NPC)
end

function hailed(NPC, Spawn)
  local Valor = GetSpawn(NPC, 980013)
  local Health = GetSpawn(NPC, 2520010)
  local Disease = GetSpawn(NPC, 2520005)
  
  if not GetTempVariable(NPC, "avatar_spawned") and not GetTempVariable(NPC, "choice_made") and not IsAlive(Valor) and not IsAlive(Health) and not IsAlive(Disease) then
    local conversation = CreateConversation()
	AddConversationOption(conversation, "We are up for the task!", "list_of_choices")
    AddConversationOption(conversation, "Interesting, I might come back later.")
    StartConversation(conversation, NPC, Spawn, "Welcome, " .. GetName(Spawn) .. ". Here you can challenge the avatars of the gods to a test of battle! If you survive, you will be rewarded dearly from any avatar you are able to defeat!")
    PlayAnimation(NPC, 12030, Spawn)
  else
    Say(NPC, "I'm sorry, but there is already an avatar present in this area. Come back to me when you've completed your task.", Spawn)
  end
end

function list_of_choices(NPC, Spawn)
  if not GetTempVariable(NPC, "avatar_spawned") and not GetTempVariable(NPC, "choice_made") then
    local conversation = CreateConversation()
    AddConversationOption(conversation, "Good, please!", "list_of_good_choices")
	AddConversationOption(conversation, "Evil, please!", "list_of_evil_choices")
	StartConversation(conversation, NPC, Spawn, "Would you like to face a Good or Evil god?")
  else
    return
  end
end

function list_of_good_choices(NPC, Spawn)
  if not GetTempVariable(NPC, "avatar_spawned") and not GetTempVariable(NPC, "choice_made") then
    local conversation = CreateConversation()
    AddConversationOption(conversation, "I would like to assist the Avatar of Rodcet Nife.", "healthavatar")
	AddConversationOption(conversation, "I would like to challenge the Avatar of Mithaniel Marr.", "valoravatar")
	AddConversationOption(conversation, "None at this time!")
	StartConversation(conversation, NPC, Spawn, "Which avatar would you like to assist or challenge?")
  else
    return
  end
end

function list_of_evil_choices(NPC, Spawn)
  if not GetTempVariable(NPC, "avatar_spawned") and not GetTempVariable(NPC, "choice_made") then
    local conversation = CreateConversation()
    AddConversationOption(conversation, "I would like to challenge the Avatar of Bertoxxulous.", "diseaseavatar")
	AddConversationOption(conversation, "None at this time!")
	StartConversation(conversation, NPC, Spawn, "Which avatar would you like to challenge?")
  else
    return
  end
end

function valoravatar(NPC)
  local Valor = GetSpawn(NPC, 980013)
  local Health = GetSpawn(NPC, 2520010)
  local Disease = GetSpawn(NPC, 2520005)
  
  if not GetTempVariable(NPC, "avatar_spawned") and not GetTempVariable(NPC, "choice_made") and not IsAlive(Valor) and not IsAlive(Health) and not IsAlive(Disease) then
    AddTimer(NPC, 5000, "valoravatar2")
    Say(NPC, "I call forth the Avatar of Mithaniel Marr, lord of Valor, to be challenged by these mortals!")
	SpawnSet(NPC, "action_state", 10141)
	SpawnSet(NPC, "mood_state", 28619)
	SetTempVariable(NPC, "choice_made", true)
  else
    Say(NPC, "I'm sorry, but there is already an avatar present in this area. Come back to me when you've completed your task.", Spawn)
  end
end

function valoravatar2(NPC)
  if not GetTempVariable(NPC, "avatar_spawned") then
	local zone = GetZone(NPC)
	local Valor = SpawnMob(zone, 980013, false, GetX(NPC), GetY(NPC), GetZ(NPC), GetHeading(NPC))
	SetTempVariable(NPC, "avatar_spawned", true)
	Despawn(NPC)
  end
end

function healthavatar(NPC)
  local Valor = GetSpawn(NPC, 980013)
  local Health = GetSpawn(NPC, 2520010)
  local Disease = GetSpawn(NPC, 2520005)
  
  if not GetTempVariable(NPC, "avatar_spawned") and not GetTempVariable(NPC, "choice_made") and not IsAlive(Valor) and not IsAlive(Health) and not IsAlive(Disease) then
    AddTimer(NPC, 5000, "healthavatar2")
    Say(NPC, "I call forth the Avatar of Rodcet Nife, lord of health and bringer of life, to be assisted by these mortals!")
	SpawnSet(NPC, "action_state", 17561)
	SpawnSet(NPC, "mood_state", 28619)
	SetTempVariable(NPC, "choice_made", true)
  else
    Say(NPC, "I'm sorry, but there is already an avatar present in this area. Come back to me when you've completed your task.", Spawn)
  end
end

function healthavatar2(NPC)
  if not GetTempVariable(NPC, "avatar_spawned") then
	local zone = GetZone(NPC)
	local Health = SpawnMob(zone, 2520010, false, GetX(NPC), GetY(NPC), GetZ(NPC), GetHeading(NPC))
	SetTempVariable(NPC, "avatar_spawned", true)
	Despawn(NPC)
  end
end

function diseaseavatar(NPC)
  local Valor = GetSpawn(NPC, 980013)
  local Health = GetSpawn(NPC, 2520010)
  local Disease = GetSpawn(NPC, 2520005)
  
  if not GetTempVariable(NPC, "avatar_spawned") and not GetTempVariable(NPC, "choice_made") and not IsAlive(Valor) and not IsAlive(Health) and not IsAlive(Disease) then
    AddTimer(NPC, 5000, "diseaseavatar2")
    Say(NPC, "I call forth the Avatar of Bertoxxulous, god of disease and bringer of plague, to be challenged by these mortals!")
	SpawnSet(NPC, "action_state", 16357)
	SpawnSet(NPC, "mood_state", 28619)
	SetTempVariable(NPC, "choice_made", true)
  else
    Say(NPC, "I'm sorry, but there is already an avatar present in this area. Come back to me when you've completed your task.", Spawn)
  end
end

function diseaseavatar2(NPC)
  if not GetTempVariable(NPC, "avatar_spawned") then
	local zone = GetZone(NPC)
	local Disease = SpawnMob(zone, 2520005, false, GetX(NPC), GetY(NPC), GetZ(NPC), GetHeading(NPC))
	SetTempVariable(NPC, "avatar_spawned", true)
	Despawn(NPC)
  end
end