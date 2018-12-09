item_list = {
  [1] = {1, 2},
  [2] = {3, 4},
}

function spawn(NPC)
  SetPlayerProximityFunction(NPC, 5, "InRange")
end

function respawn(NPC)
  spawn(NPC)
end

function InRange(NPC, Spawn)
  for i, item in ipairs(item_list[math.random(#item_list)]) do
    local item_name = GetItemByID(Spawn, item, 1, 0)
    SummonItem(Spawn, item)
    ApplySpellVisual(Spawn, 591)
    SendMessage(Spawn, "\\#ff0000You picked up \\#6b42f4" .. item_name .. "\\#ff0000.")
    Despawn(NPC)
  end
end
