function examined(Item, Spawn)
  local con = CreateConversation()
  AddConversationOption(con, "Release the mole rat.", "release")
  AddConversationOption(con, "Let him be for now.", "close_dialog")
  StartDialogConversation(con, 2, Item, Spawn, "This cute little guy would be perfect as bait to lure down the cliffdiver hawks.")
end

function release(Item, Spawn)
  local zone = GetZone(Spawn)
  local molerat = SpawnMob(zone, 2780089, false, GetX(Spawn), GetY(Spawn), GetZ(Spawn), GetHeading(Spawn))
  RemoveItem(Spawn, 8060)
  CloseItemConversation(Item, Spawn)
end

function close_dialog(Item, Spawn)
  CloseItemConversation(Item, Spawn)
end
