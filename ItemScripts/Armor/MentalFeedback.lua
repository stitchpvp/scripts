function equipped(item, player)
  AddProc(player, 2, 5, item)
end

function proc(item, caster, target)
  ProcDamage(caster, target, "Mental Feedback", 6, 14, 14, 0, "You hit %t with Mental Feedback")
end

function unequipped(item, player)
  RemoveProc(player, item)
end
