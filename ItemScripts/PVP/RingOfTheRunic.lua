function equipped(item, player)
  AddProc(player, 11, 25, item)
end

function unequipped(item, player)
  RemoveProc(player, item)
end

function proc(item, caster, target, proctype)
  CastSpell(target, 1001349, 1, caster)
end