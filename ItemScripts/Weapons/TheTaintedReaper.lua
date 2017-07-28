function equipped(item, player)
  local proc_chance = GetProcPercentageForWeapon(item, 1.8)
  AddProc(player, 3, proc_chance, item)
end

function proc(item, caster, target)
  CastSpell(caster, 1001469, SpellTier)
end

function unequipped(item, player)
  RemoveProc(player, item)
end