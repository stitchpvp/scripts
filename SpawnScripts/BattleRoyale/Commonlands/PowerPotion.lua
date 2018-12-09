function spawn(NPC)
  SetPlayerProximityFunction(NPC, 5, "InRange")
end

function respawn(NPC)
  spawn(NPC)
end

function InRange(NPC, Spawn)
  local pct = GetPower(Spawn) / GetMaxPower(Spawn)
  if pct >= 1.00 then
    SendPopUpMessage(Spawn, "\\#ff0000You're already at the max power possible.")
    SendMessage(Spawn, "\\#ff0000You're already at the max power possible.")
  else
    CastSpell(Spawn, 92653671, 1)
    ApplySpellVisual(Spawn, 2811)
    Despawn(NPC)
  end
end
