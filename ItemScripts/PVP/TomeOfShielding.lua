function equipped(item, player)
  AddProc(player, 5, 5, item)
end

function unequipped(item, player)
  RemoveProc(player, item)
end

function proc(item, caster, attacker, proctype)
  CastSpell(caster, 85656163, 1)
end