function cast(Caster, Target)
  AddProc(Target, 4, 10)
end

function proc(Caster, Target, Type, HateTransfer, SpellID)
  local spell_caster = GetCaster()

  CastSpell(Caster, SpellID, 1, spell_caster)
end

function remove(Caster, Target)
  RemoveProc(Target)
end