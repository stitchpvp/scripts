function cast(Caster, Target)
  AddProc(Target, 4, 5)
end

function proc(Caster, Target, Type, HateTransfer)
  local spell_caster = GetCaster()

  CastSpell(Caster, 13885446, 1, spell_caster)
end

function remove(Caster, Target)
  RemoveProc(Target)
end