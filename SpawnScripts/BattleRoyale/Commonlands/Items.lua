item_list = {
  [1] = {1},
  [2] = {2},
  [3] = {3},
  [4] = {4},
}

function spawn(NPC)
  SetPlayerProximityFunction(NPC, 5, "InRange")
end

function respawn(NPC)
  spawn(NPC)
end

function InRange(NPC, Spawn)
  for i, item in ipairs(item_list[math.random(#item_list)]) do
    SummonItem(Spawn, item)
    ApplySpellVisual(Spawn, 591)
    SendMessage(Spawn, "\\#ffffffYou picked up \\#6b42f4" .. item .. "\\#ffffff.")
    Despawn(NPC)
  end
end
