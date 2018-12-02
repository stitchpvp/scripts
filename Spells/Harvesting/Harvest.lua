function precast(Caster, Target)
  if IsGroundSpawn(Target) then
    return CanHarvest(Caster, Target)
  else
    return false, 41
  end
end

function cast(Caster, Target)
	Harvest(Caster, Target)
end
