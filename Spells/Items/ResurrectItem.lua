function precast(Caster, Target)
  return (not IsInCombat(Caster)), 12
end

function cast(Caster, Target, Percentage, SpellName)
  local check = GetTarget(Caster)
  local check2 = GetArchetypeName(Target)

  if check ~= nil then
	if not IsAlive(Target) and check2 == "Priest" then
	  Resurrect(Target, Percentage, Percentage, 1, SpellName, 2, 1)
	else
	  SendMessage(Caster, "Target must be priest class.", "yellow")
	end
  end
end

function remove(Caster, Target)
  ApplySpellVisual(Target, 1563)
end