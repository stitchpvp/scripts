function equipped(item, player)
  Say(player, "With this weapon, at 1.8 times per minute, this proc has a " .. GetProcChanceForWeapon(item, 1.8) .. " chance of triggering.")
end