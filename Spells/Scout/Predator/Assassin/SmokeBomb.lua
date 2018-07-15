function cast(Caster, Target, Dehate)
  AddHate(Caster, Target, Dehate)
  CastSpell(Caster, 2903996, 1)
  BlurVision(Target, 20.0)
  Interrupt(Caster, Target)

  local find_target = GetTarget(Caster)

  if find_target ~= nil then
    if not HasGroup(find_target) then
      SetTarget(find_target, 0xFFFFFFFF)
    else
      local group_target = GetGroup(find_target)
      for _, players in ipairs(group_target) do
	    if IsPlayer(players) then
	      SetTarget(players, 0xFFFFFFFF)
	    end
      end
    end
  else
    return
  end
end

function remove(Caster, Target)
  BlurVision(Target, 0.0)
end