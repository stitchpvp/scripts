function precast(Caster, Target)
  if IsBehind(Caster, Target) or IsFlanking(Caster, Target) then
    return true
  else
    return false
  end
end

function cast(Caster, Target, MinDmg, MaxDmg, MitDebuff)
  AddSpellBonus(Target, 204, MitDebuff)
  SpellDamage(Target, 2, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
