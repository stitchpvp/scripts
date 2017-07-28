function equipped(item, player)
  AddProc(player, 2, 5, item)
end

function proc(item, caster, target, proctype)
 CastSpell(target, 1001479, 1, caster)
end

function unequipped(item, player)
  RemoveProc(player, item)
end