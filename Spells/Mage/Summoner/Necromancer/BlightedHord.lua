function cast(Caster, Target, PetID)
	local x = GetX(Caster)
	local y = GetY(Caster)
	local z = GetZ(Caster)

	SummonDumbFirePet(Caster, Target, 4700878, math.random(0, 5) + x, math.random(0, 5) + y, math.random(0, 5) + z)
	SummonDumbFirePet(Caster, Target, 4700878, math.random(0, 5) + x, math.random(0, 5) + y, math.random(0, 5) + z)
	SummonDumbFirePet(Caster, Target, 4700878, math.random(0, 5) + x, math.random(0, 5) + y, math.random(0, 5) + z)
end