spell_list = {
  [1] = {123626226},
  [2] = {210633591},
  [3] = {74638181},
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

    if spell == 123626226 then
      spell_name = "Putrefy"
    elseif spell == 210633591 then
      spell_name = "Ancient Shroud"
    elseif spell == 74638181 then
      spell_name = "Fuliginous Whip"
    end

    SendMessage(Spawn, "\\#ffffffYou picked up \\#9989b5[" .. spell_name .. "]\\#ffffff.")
    Despawn(NPC)
  end
end
