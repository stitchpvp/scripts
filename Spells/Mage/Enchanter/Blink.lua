function cast(Caster, Target, HatePosition, HateAmount)
  if IsPlayer(Target) then
	  SetTarget(Target, 0xFFFFFFFF)
  else
	  AddHate(Caster, Target, HateAmount, 1)
  end
end

function remove(Caster, Target)
  local random = math.random(5, 10)
  local x = GetX(Caster) + random
  local y = GetY(Caster)
  local z = GetZ(Caster) + random
  SetPosition(Caster, x, y, z)
end
