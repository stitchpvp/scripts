function equipped(item, player)
    AddSpellBonus(Target, 602, 13.5)
end

function unequipped(item, player)
  RemoveSpellBonus(Target)
end