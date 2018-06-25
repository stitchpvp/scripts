function equipped(Item, Player)
  AddProc(Player, 11, 5, Item)
end

function unequipped(Item, Player)
  RemoveProc(Player, Item)
end

function proc(Item, Caster, Target)
  CastSpell(Target, 245321333, 1, Caster)
end
