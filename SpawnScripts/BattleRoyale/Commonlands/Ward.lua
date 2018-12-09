function spawn(NPC)
  SetPlayerProximityFunction(NPC, 5, "InRange")
end

function respawn(NPC)
  spawn(NPC)
end

function InRange(NPC, Spawn)
  if HasSpellEffect(Spawn, 137167011) then
    SendMessage(Spawn, "\\#b2764aSince you already have a ward spell running, it has been replaced by a new one.")
  end
  CastSpell(Spawn, 137167011, 1)
  Despawn(NPC)
end
