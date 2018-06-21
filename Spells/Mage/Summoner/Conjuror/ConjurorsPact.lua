function cast(Caster, Pet)
  AddProc(Pet, 1, 5)
  AddProc(Pet, 2, 25)
end

function proc(Caster, Target, ProcType)
  local spell_caster = GetCaster()
  CastSpell(Caster, 93353493, 1, spell_caster)
end

function remove(Caster, Pet)
  RemoveProc(Pet)
end