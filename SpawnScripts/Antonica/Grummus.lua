function spawn(NPC)
  CastSpell(NPC, 26620319, 1, NPC, true) --Hardened Constitution
  CastSpell(NPC, 166451223, 1, NPC, true) --Brute Strength
  CastSpell(NPC, 209484141, 1, NPC, true) --Retribution of Grummus

  Say(NPC, "Argggh!")

  local Health = GetSpawn(NPC, 2520010)
  SetInCombat(Health, true)

  AddTimer(NPC, 5000, "debuffs")
  AddTimer(NPC, 35000, "SpawnAddsMsg")
  AddTimer(NPC, 45000, "Plaguebound")
  AddTimer(NPC, 390000, "battleweary")
  AddTimer(NPC, 510000, "combat_fatigue")

  SetTempVariable(NPC, "grummus_alive_for_health_barrier_check", true)
  SetTempVariable(NPC, "prevent_loop", nil)
  SetTempVariable(NPC, "killspawn", "test")
end

function debuffs(NPC)
  if IsInCombat(NPC) == false then
    return
  else
    CastSpell(NPC, 118670389, 1, NPC) --Unwavering Faith
    CastSpell(NPC, 203266846, 1, NPC) --Shimmer of Disease

    AddTimer(NPC, math.random(6000, 10000), "debuffs") -- re-apply this in case of resurrections
  end
end

function Plaguebound(NPC, Spawn)
  local most_hated = GetMostHated(NPC)
  local group = GetGroup(most_hated)

  AddTimer(NPC, 45000, "Plaguebound")

  if not HasGroup(most_hated) then --for self testing purpose
    if not IsAlive(most_hated) then
      return
    else
      CastSpell(most_hated, 5038031, 1)
    end
  else
    local player = group[math.random(#group)]
    if not IsAlive(player) then
      return
    else
      CastSpell(player, 5038031, 1)
    end
  end
end

function battleweary(NPC)
  if IsInCombat(NPC) == false then
    return
  end

  Say(NPC, "I see you grow tired from my onslaught, it won't be long now before victory is mine!")

  CastSpell(NPC, 87835731, 1) --Aura of Confidence
  CastSpell(NPC, 220077792, 1, NPC) --Battleweary
end

function combat_fatigue(NPC, Spawn)
  if IsInCombat(NPC) == false then
    return
  end

  Say(NPC, "It's over now!")

  CastSpell(NPC, 177432220, 1, NPC) --Combat Fatigue 
end

function death(NPC)
  local Health = GetSpawn(NPC, 2520010)
  local Disease = GetSpawn(NPC, 2520040)
  local add1 = GetSpawn(NPC, 2520038)
  local add2 = GetSpawn(NPC, 2520039)
  local manifested = GetSpawn(NPC, 2520037)
  SetTempVariable(Health, "grummus_spawned", nil)
  SetTempVariable(Health, "grummus_dead", true)
  SetTempVariable(Health, "say", nil)
  SetTempVariable(NPC, "prevent_loop", nil)
  SetTempVariable(NPC, "grummus_alive_for_health_barrier_check", nil)
  SetTempVariable(NPC, "manifested_spawned", nil)
  Say(Health, "You have engaged in a struggle without cause and although you prevailed, there was little reason to entertain the folly of disease... Only with inner peace and discipline can true, lasting health thrive.")
  SpawnSet(Health, "visual_state", 0)
  SpawnSet(Health, "action_state", 0)
  SpawnSet(Health, "mood_state", 0)
  AddTimer(NPC, 10000, "health_visual_state_teleport_out")
  Despawn(Disease)
  Despawn(add1)
  Despawn(add2)
  Despawn(manifested)
end

function CombatReset(NPC)
  local Health = GetSpawn(NPC, 2520010)
  local Disease = GetSpawn(NPC, 2520040)
  SetTempVariable(Health, "grummus_spawned", nil)
  SetTempVariable(NPC, "diseaseconvo_spawned", nil)
  SetTempVariable(NPC, "prevent_loop", nil)
  SetTempVariable(NPC, "grummus_alive_for_health_barrier_check", nil)
  SetTempVariable(Health, "say", nil)
  SetTempVariable(NPC, "manifested_spawned", nil)
  SpawnSet(Health, "visual_state", 0)
  SpawnSet(Health, "action_state", 0)
  SpawnSet(Health, "mood_state", 0)
  PlayAnimation(Health, 12246)
  Emote(Health, "sighs.")

  while true do
    local add1 = GetSpawn(NPC, 2520038)

    if add1 == nil then
      break
    end

    Despawn(add1)
  end

  while true do
    local add2 = GetSpawn(NPC, 2520039)

    if add2 == nil then
      break
    end

    Despawn(add2)
  end

  while true do
    local manifested = GetSpawn(NPC, 2520037)

    if manifested == nil then
      break
    end

    Despawn(manifested)
  end
  Despawn(NPC, 1000)
  Despawn(Disease, 1000)
end

function SpawnAddsMsg(NPC)
  SpawnAdds(NPC)
  Say(NPC, "Get 'em!")
  AddTimer(NPC, 45000, "SpawnAddsMsg")
end

function SpawnAdds(Spawn)
  local Health = GetSpawn(Spawn, 2520010)
  local player = GetMostHated(Spawn)
  local add1 = SpawnMob(GetZone(Health), 2520038, false, GetX(player) - 30, GetY(player), GetZ(player), 90)
  local add2 = SpawnMob(GetZone(Health), 2520039, false, GetX(player) - 30, GetY(player), GetZ(player), 90)
  AddHate(player, add1, 1)
  AddHate(player, add2, 1)
end

function SpawnDiseaseConvo(Spawn)
  local zone = GetZone(Spawn)
  local HealthPos = GetSpawn(Spawn, 2520010)
  SpawnMob(zone, 2520040, false, GetX(HealthPos) + 20, GetY(HealthPos), GetZ(HealthPos), 90)
  SetTempVariable(Spawn, "diseaseconvo_spawned", true)
end

function healthchanged(NPC, Spawn)
  local hp_percent = GetHP(NPC) / GetMaxHP(NPC)
  local DiseaseConvo = GetSpawn(NPC, 2520040)
  local HealthConvo = GetSpawn(NPC, 2520010)

  if hp_percent <= 0.75 and DiseaseConvo == nil then
    if GetTempVariable(NPC, "diseaseconvo_spawned") == nil then
      SpawnDiseaseConvo(NPC, Spawn)
      AddTimer(NPC, 1000, "disease_visual_state_teleport_in")
      AddTimer(NPC, 5000, "disease_convo1_1")
      Say(HealthConvo, "The manifested god of decay, putrefy and rot is approaching!")
    end
  end

  if hp_percent <= 0.10 and DiseaseConvo ~= nil then
    if GetTempVariable(NPC, "prevent_loop") == nil then
      AddTimer(NPC, 2000, "disease_convo_end")
      Say(HealthConvo, "Bertoxxulous is retreating back to Plane of Disease! Finish off Grummus so Norrath is saved!")
      SetTempVariable(NPC, "prevent_loop", true)
    end
  end
end

function disease_convo1_1(NPC)
  local DiseaseConvo = GetSpawn(NPC, 2520040)
  Say(DiseaseConvo, "Ha, look at you inside that pesky barrier! For somebody who is a god of well being, you sure are showing cowardice.")
  SpawnSet(DiseaseConvo, "visual_state", 18174)
  AddTimer(NPC, 2000, "health_convo1_1")
end

function health_convo1_1(NPC)
  local DiseaseConvo = GetSpawn(NPC, 2520040)
  local HealthConvo = GetSpawn(NPC, 2520010)
  PlayAnimation(DiseaseConvo, 125)
  Say(HealthConvo, "Grrr...how dare you call me a coward. You shall pay for this dearly, Bertoxxulous.")
  AddTimer(NPC, 5000, "disease_convo1_2")
end

function disease_convo1_2(NPC)
  local DiseaseConvo = GetSpawn(NPC, 2520040)
  PlayAnimation(DiseaseConvo, 11881)
  Say(DiseaseConvo, "Me? Pay? Don't make me laugh.")
  AddTimer(NPC, 5000, "health_convo1_2")
end

function health_convo1_2(NPC)
  local HealthConvo = GetSpawn(NPC, 2520010)
  Say(HealthConvo, "You really have no place here. Go back from whence you came.")
  AddTimer(NPC, 5000, "disease_convo1_3")
end

function disease_convo1_3(NPC)
  local DiseaseConvo = GetSpawn(NPC, 2520040)
  Say(DiseaseConvo, "Quit being arrogant. You're not the owner of me. I will not tolerate your ridiculous demands! I will rot Norrath with my stench of putrefying flesh as I please. Grummus, kill them now!")
end

function disease_convo_end(NPC)
  local DiseaseConvo = GetSpawn(NPC, 2520040)
  Say(DiseaseConvo, "Argh, my underling is on the brink of death! Shame...shame... Perhaps I will have to come up with better plans to kill you all eventually. Goodbye for now.")
  PlayAnimation(DiseaseConvo, 11628)
  AddTimer(NPC, 3000, "disease_visual_state_teleport_out")
end

function disease_visual_state_teleport_in(NPC)
  local Disease = GetSpawn(NPC, 2520040)
  SpawnSet(Disease, "visual_state", 1803)
end

function disease_visual_state_teleport_out(NPC)
  local Disease = GetSpawn(NPC, 2520040)
  SpawnSet(Disease, "visual_state", 18652)
  Despawn(Disease, 2000)
end

function health_visual_state_teleport_out(NPC)
  local Health = GetSpawn(NPC, 2520010)
  SpawnSet(Health, "visual_state", 18827)
  SpawnSet(Health, "action_state", 29118)
  SpawnSet(Health, "mood_state", 0)
  Despawn(Health, 2000)
end

function health_states_none(NPC)
  local Health = GetSpawn(NPC, 2520010)
  SpawnSet(Health, "visual_state", 0)
  SpawnSet(Health, "action_state", 0)
  SpawnSet(Health, "mood_state", 0)
end
