function equipped(item, player)
  AddProc(player, 5, 20, item)
end

function unequipped(item, player)
  RemoveProc(player, item)
end

function proc(item, caster, attacker, proctype)
  CastSpell(caster, 225961174, 1)
end