function equipped(item, player)
  AddProc(player, 2, 5, item)
end

function proc(item, caster, target)
  ProcDamage(caster, target, "Icy Feedback", 4, 8, 8, 0, "You hit %t with Icy Feedback")
end

function unequipped(item, player)
  RemoveProc(player, item)
end
