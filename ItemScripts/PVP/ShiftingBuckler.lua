function equipped(item, player)
  AddProc(player, 2, 10, item)
end

function unequipped(item, player)
  RemoveProc(player, item)
end

function proc(item, caster, attacker, proctype)
  CastSpell(attacker, 1001345, 1, caster)
end