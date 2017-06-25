function precast(Caster, Target)
  local ranged = GetEquippedItemBySlot(Caster, 16)

  return GetItemType(ranged) == 2
end

function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 2, MinDmg, MaxDmg)
  SpellDamage(Target, 2, MinDmg, MaxDmg)
end