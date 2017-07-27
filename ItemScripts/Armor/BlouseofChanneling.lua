function equipped(item, player)
  AddProc(player, 2, 5, item)
end


function proc(item, caster, target)
  ProcDamage(caster, target, "Arcane Feedback", 7, 16, 24, 0, "You hit %t with Arcane Feedback")
end

function unequipped(item, player)
  RemoveProc(player, item)
end
