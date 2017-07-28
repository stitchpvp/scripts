function equipped(item, player)
  AddProc(player, 2, 5, item)
end

function proc(item, caster, target)
  ProcDamage(caster, target, "Divine Feedback", 7, 13, 13, 0, "You hit %t with Divine Feedback")
end

function unequipped(item, player)
  RemoveProc(player, item)
end
