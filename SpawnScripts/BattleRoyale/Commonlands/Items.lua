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

    if item == 1 then
      item_name = "Test"
    elseif item == 2 then
      item_name = "Test 2"
    elseif item == 3 then
      item_name = "Test 3"
    elseif item == 4 then
      item_name = "Test 4"
    end

    SendMessage(Spawn, "\\#ffffffYou picked up \\#9989b5[" .. item_name .. "]\\#ffffff.")

    Despawn(NPC)
  end
end
