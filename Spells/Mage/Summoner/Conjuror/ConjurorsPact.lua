function cast(Caster, Target)
  local pet = GetPet(Caster)
  AddProc(pet, 1, 5)
  AddProc(pet, 2, 25)
  CastSpell(pet, 1002838, 1, Caster)
end

function proc(Caster, Target, ProcType)
  local spell_caster = GetCaster()
  CastSpell(Caster, 93353493, 1, spell_caster)
end

function remove(Caster, Target)
  local pet = GetPet(Caster)

  if pet ~= nil then
	CastSpell(pet, 1002838, 1, Caster)
	RemoveProc(pet)
  end
end