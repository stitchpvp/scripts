function spawn(NPC)
  SetPlayerProximityFunction(NPC, 5, "InRange")
end

function respawn(NPC)
  spawn(NPC)
end

function InRange(NPC, Spawn)
  local random = math.random(1, 4)

  if random == 1 then
    if HasSpellEffect(Spawn, 137167011) then
      SendMessage(Spawn, "\\#b2764aSince you already have a ward spell running, it has been replaced by a new one.")
    else
      SendPopUpMessage(Spawn, "\\#ffffffYou picked up \\#6b42f4Coalesce \\#ffffff!")
    end
    CastSpell(Spawn, 137167011, 1) -- Coalesce
    ApplySpellVisual(Spawn, 3712)
  elseif random == 2 then
    CastSpell(Spawn, 13413213, 1) -- Sonic-Like Speed
    ApplySpellVisual(Spawn, 2813)
    SendPopUpMessage(Spawn, "\\#ffffffYou picked up \\#6b42f4Sonic-Like Speed \\#ffffff!")
  elseif random == 3 then
    CastSpell(Spawn, 191809526, 1) -- Slow Time
    ApplySpellVisual(Spawn, 3114)
    SendPopUpMessage(Spawn, "\\#ffffffYou picked up \\#6b42f4Slow Time \\#ffffff!")
  elseif random == 4 then
    CastSpell(Spawn, 201959562, 1) -- Into the Shadows!
    ApplySpellVisual(Spawn, 591)
    SendPopUpMessage(Spawn, "\\#ffffffYou picked up \\#6b42f4Into the Shadows \\#ffffff!")
  end
  Despawn(NPC)
end
