function spawn(NPC)
  SpawnSet(NPC, "visual_state", 1803)
  SpawnSet(NPC, "action_state", 29118)
  AddTimer(NPC, 4000, "health_states_none")
  SetPlayerProximityFunction(NPC, 10, "InRange")
  SetTempVariable(NPC, "grummus_spawned", nil)
end

function respawn(NPC)
  spawn(NPC)
end

function hailed(NPC, Spawn)
  local count = 0

  if HasGroup(Spawn) then
    local raidcheck = GetGroup(Spawn)

    for _, players in ipairs(raidcheck) do
      count = count + 1
    end
  else
    count = 1
  end

  if count < 2 then
    SendPopUpMessage(Spawn, "You lack the force required to challenge such a powerful creature.", 255, 0, 0)
    SendMessage(Spawn, "You lack the force required to challenge such a powerful creature.", "red")
    Say(NPC, "Speak to me again when you have enough people in the raid first.", Spawn)
  else
    if not GetTempVariable(NPC, "grummus_spawned") and not GetTempVariable(NPC, "grummus_dead") then
      local conversation = CreateConversation()
      AddConversationOption(conversation, "Yes, we're ready.", "Choice1")
      AddConversationOption(conversation, "No.", "Choice2")
      StartConversation(conversation, NPC, Spawn, "Hail " .. GetName(Spawn) .. ", I am seeking the heroes of Norrath to aid me in the battle against the plague-ridden disease. You have gathered enough raid force, are you ready?")
      PlayAnimation(NPC, 12030, Spawn)
    end

    if GetTempVariable(NPC, "say") ~= nil then
      local choice = math.random(1, 3)

      if choice == 1 then
        Say(NPC, "Accck!!", Spawn)

      elseif choice == 2 then
        Say(NPC, "Kill it!", Spawn)

      elseif choice == 3 then
        Say(NPC, "Destroy it!", Spawn)    
      end
    end
  end
end

function Choice1(NPC, Spawn)
  if not GetTempVariable(NPC, "grummus_spawned") then
    Say(NPC, "The servant of disease approaches. I will cast electric barrier surrounding me for my own protection and perhaps yours. Be quick to get into my barrier as soon as possible if necessary.")
    SpawnGrummus(NPC, Spawn)
    SpawnSet(NPC, "visual_state", 28619)
    AddTimer(NPC, 1000, "barrier")
  else
    return
  end
end

function Choice2(NPC, Spawn)
  if not GetTempVariable(NPC, "grummus_spawned") then
    Say(NPC, "Tsk, that's too bad. Norrath is becoming unsafer by the moment.", Spawn)
    PlayAnimation(NPC, 12216, Spawn)
  else
    return
  end
end

function barrier(NPC)
  local Grummus = GetSpawn(NPC, 2520012)

  if Grummus == nil then
    return
  else
    if GetTempVariable(Grummus, "grummus_alive_for_health_barrier_check") ~= nil then
      SpawnSet(NPC, "action_state", 12954)
      SpawnSet(NPC, "mood_state", 12954)
      FaceTarget(NPC, Grummus)
      AddTimer(NPC, 1000, "barrier")
    else
      SpawnSet(NPC, "action_state", 0)
      SpawnSet(NPC, "mood_state", 0)
    end
  end
end

function InRange(NPC, Spawn)
  if GetTempVariable(NPC, "grummus_spawned") ~= nil then
    if HasSpellEffect(Spawn, 5038031) then
      SendPopUpMessage(Spawn, "The barrier hums and then zaps you, cleansing the incurable curse on you.", 0, 255, 0)
      Say(NPC, "Rot and decay cleansed!", Spawn)
      SetTempVariable(Spawn, "didnt_expire", true)
      CastSpell(Spawn, 5038031, 1) -- Plaguebound
      CastSpell(Spawn, 128050114, 1, NPC) -- Electric Shock
    else
      Say(NPC, "Get back!", Spawn)
      SendMessage(Spawn, "You are knocked back away from the barrier!", "yellow")
      CastSpell(Spawn, 128050114, 1, NPC)
      Knockback(NPC, Spawn, 1000, 30, -100)
    end
  else
    return
  end
end

function SpawnGrummus(Spawn, Player)
  local zone = GetZone(Spawn)
  local Grummus = SpawnMob(zone, 2520012, false, GetX(Player) + 50, GetY(Player), GetZ(Player), GetHeading(Player) - 90)
  AddHate(Player, Grummus, 1)
  SetTempVariable(Spawn, "grummus_spawned", "true")
  SetTempVariable(Spawn, "say", "true")
end

function health_states_none(NPC)
  SpawnSet(NPC, "visual_state", 0)
  SpawnSet(NPC, "action_state", 0)
  SpawnSet(NPC, "mood_state", 0)
end
