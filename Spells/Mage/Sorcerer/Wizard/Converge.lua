function cast(Caster, Target)
  AddProc(Target, 2, 10)
end

function proc(Caster, Target, ProcType, HateTransfer)
  local spell_caster = GetCaster()

  CastSpell(Caster, 141913376, 1, spell_caster)
end

function remove(Caster, Target)
  RemoveProc(Target)
end
