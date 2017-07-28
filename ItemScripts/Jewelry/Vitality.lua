function equipped(item, player)
    AddSpellBonus(player, 602, 13.5)
end

function unequipped(item, player)
  RemoveSpellBonus(player, item)
end