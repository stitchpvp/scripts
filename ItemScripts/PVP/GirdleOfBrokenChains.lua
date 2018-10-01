function equipped(item, player)
  AddProc(player, 2, 5, item)
end

function unequipped(item, player)
  RemoveProc(player, item)
end

function proc(item, caster, attacker, proctype)
  CastSpell(caster, 62536994, 1)
end