function equipped(Item, Player)
  AddProc(Player, 4, 5, Item)
end

function unequipped(Item, Player)
  RemoveProc(Player, Item)
end

function proc(Item, Caster, Attacker, ProcType)
  CastSpell(Attacker, 181890697, 1, Caster)
end