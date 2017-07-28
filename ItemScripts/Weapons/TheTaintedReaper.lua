function equipped(item, player)
  local proc_chance = GetProcPercentageForWeapon(item, 1.8)
  AddProc(player, 3, proc_chance, item)
end

function proc(item, Caster, Target)
  CastSpell(Target, 1001469, 1, Caster)
end

function unequipped(item, player)
  RemoveProc(player, item)
end