function spawn(NPC)
  SetPlayerProximityFunction(NPC, 5, "InRange")
end

function respawn(NPC)
  spawn(NPC)
end

function InRange(NPC, Spawn)
  local pct = GetHP(Spawn) / GetMaxHP(Spawn)
  if pct >= 1.00 then
    SendPopUpMessage(Spawn, "\\#ff0000You're already at the max health possible.")
    SendMessage(Spawn, "\\#ff0000You're already at the max health possible.")
  else
    CastSpell(Spawn, 253326018, 1)
    ApplySpellVisual(Spawn, 2810)
    Despawn(NPC)
  end
end
