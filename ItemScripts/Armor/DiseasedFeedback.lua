function equipped(item, player)
  AddProc(player, 2, 5, item)
end

function proc(item, caster, target)
  ProcDamage(caster, target, "Dieased Feedback", 3, 13, 13, 0, "You hit %t with Diseased Feedback")
end

function unequipped(item, player)
  RemoveProc(player, item)
end
