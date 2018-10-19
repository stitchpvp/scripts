function precast(Caster, Target)
  local check = GetTarget(Caster)
  local check2 = GetArchetypeName(Target)
  
  return (not IsInCombat(Caster)), 12
  
  if check ~= nil then
    if check2 == "Priest" then
	  return true
    else
	  SendMessage(Caster, "Target must be priest class.", "yellow")
	  return false
    end
  else
    return false
  end
end

function cast(Caster, Target, Percentage, SpellName)
  local check = GetArchetypeName(Target)
  
  if not IsAlive(Target) then
    if check == "Priest" then
      Resurrect(Target, Percentage, Percentage, 1, SpellName, 2, 1)
    else
      SendMessage(Caster, "Target must be priest class.", "yellow")
    end
  else
    SendMessage(Caster, "Target is not dead.", "yellow")
  end
end

function remove(Caster, Target)
  ApplySpellVisual(Target, 1563)
end