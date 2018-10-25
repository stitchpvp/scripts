function precast(Caster, Target)

  if not IsEpic(Target) and not IsPlayer(Target) and GetLevel(Target) <= 25 then
    return true
  elseif not IsEpic(Target) and GetLevel(Target) > 25 then
	  SendMessage(Caster, "Only affects targets level 25 and below.", "yellow")
	  return false, 38
  elseif IsEpic(Target) then
	  SendMessage(Caster, "Does not affect Epic targets.", "yellow")
	  return false, 43
  elseif IsPlayer(Target) then
	  SendMessage(Caster, "Players cannot be charmed.", "yellow")
	  return false, 44
  end
end

function cast(Caster, Target)
  Charm(Caster, Target)
end

function tick(Caster, Target)
  local roll = math.random(1, 100)

  if roll <= 5 then
	  CancelSpell()
  end
end

function remove(Caster, Target)
  local pet = GetCharmedPet(Caster)

  CastSpell(Caster, 70490095, 1)

  if pet ~= nil then
	  DismissPet(pet)
	  CastSpell(pet, 4714495, 1, Caster)
	  AddHate(Caster, pet, 100, 1)
  end
end
