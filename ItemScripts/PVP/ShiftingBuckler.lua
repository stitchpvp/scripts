function equipped(item, player)
  AddProc(player, 2, 10, item)
end

function unequipped(item, player)
  Say(player, "removing proc")
  RemoveProc(player, item)
end

function proc(item, caster, attacker, proctype)
  Say(caster, "Being shifty around " .. GetName(attacker))
end