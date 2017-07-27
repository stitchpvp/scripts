function equipped(item, player)
  AddProc(player, 2, 5, item)
end

function proc(item, caster, target, proctype)
 CastSpell(caster, 1001472, SpellTier)
end

function unequipped(item, player)
  RemoveProc(player, item)
end