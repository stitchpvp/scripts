function precast(Caster, Target)
  if not HasSpell(Target, 215780092) then
    SendMessage(Caster, "Target is not in DBNO (down but not out) state.", "yellow")
    return false, 44
  elseif HasSpell(Target, 215780092) then
    return true
  end
end

function cast(Caster, Target, Percentage)
  local hp_perc = GetMaxHP(Target) * Percentage
  SpellHeal(Target, "Heal", hp_perc, hp_perc, 2, 1)
  CureByType(Target, 99, 5)
end
