function cast(Caster, Target, Arcane)
  AddSpellBonus(Target, 203, Arcane)
  AddProc(Target, 16, 20)
end

function proc(Caster, Target, Type, Arcane, SpellID)
  local spell_caster = GetCaster()

  CastSpell(Target, SpellID, 1, spell_caster)
end

function remove(Caster, Target)
  RemoveProc(Target)
end
