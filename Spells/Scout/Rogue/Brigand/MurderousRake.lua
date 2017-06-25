function precast(Caster, Target)
  if IsBehind(Caster, Target) or IsFlanking(Caster, Target) then
    return true
  else
    return false
  end
end

function cast(Caster, Target, MinDmg, MaxDmg, PhysicalDebuff, MagicDebuff)
  SpellDamage(Target, 2, MinDmg, MaxDmg)
  AddSpellBonus(Target, 204, PhysicalDebuff)
  AddSpellBonus(Target, 201, MagicDebuff)
  AddSpellBonus(Target, 202, MagicDebuff)
  AddSpellBonus(Target, 203, MagicDebuff)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end