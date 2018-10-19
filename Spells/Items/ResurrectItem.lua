function cast(Caster, Target, Percentage, SpellName)
  local check = GetArchetypeName(Target)
  
  if check == "Priest" then
    Resurrect(Target, Percentage, Percentage, 1, SpellName, 2, 1)
  else
    SendMessage(Caster, "Target must be priest class.", "yellow")
  end
end

function remove(Caster, Target, Percentage, SpellName)
  ApplySpellVisual(Target, 1563)
end