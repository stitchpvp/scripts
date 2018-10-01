function equipped(item, player)
  AddProc(player, 5, 30, item)
end

function unequipped(item, player)
  RemoveProc(player, item)
end

function proc(item, caster, attacker, proctype)
  CastSpell(caster, 193255394, 1)
  CastSpell(caster, 225287940, 1)
end