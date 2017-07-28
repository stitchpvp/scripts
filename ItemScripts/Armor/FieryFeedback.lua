function equipped(item, player)
  AddProc(player, 2, 1, item)
end

function proc(item, caster, target)
  ProcDamage(caster, target, "Fiery Feedback", 3, 70, 121, 0, "You hit %t with Fiery Feedback")
end

function unequipped(item, player)
  RemoveProc(player, item)
end
