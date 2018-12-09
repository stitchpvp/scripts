spell_list = {
  [1] = {123626226, 74638181},
  [2] = {210633591, 16785954},
}

function spawn(NPC)
  SetPlayerProximityFunction(NPC, 5, "InRange")
end

function respawn(NPC)
  spawn(NPC)
end

function InRange(NPC, Spawn)
  for i, spell in ipairs(spell_list[math.random(#spell_list)]) do
    AddSpellBookEntry(Spawn, spell, 1)
    ApplySpellVisual(Spawn, 591)
    SendMessage(Spawn, "\\#ff0000You picked up \\#6b42f4" .. spell .. "\\#ff0000.")
    Despawn(NPC)
  end
end
