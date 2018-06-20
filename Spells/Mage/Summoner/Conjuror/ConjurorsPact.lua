function cast(Caster, Target)
  AddProc(Caster, 1, 5)
  AddProc(Caster, 2, 25)
end

function proc(Caster, Target, ProcType)
  local spell_caster = GetCaster()
  CastSpell(Caster, 93353493, 1, spell_caster)
end

function remove(Caster)
  RemoveProc(Caster)
end