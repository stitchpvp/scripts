function cast(Caster, Target, Attributes, Avoidance, Mitigation)
  AddSpellBonus(Target, 0, Attributes)
  AddSpellBonus(Target, 2, Attributes)
  AddSpellBonus(Target, 3, Attributes)
  AddSpellBonus(Target, 4, Attributes)
  AddSpellBonus(Target, 696, Avoidance)
  AddSpellBonus(Target, 201, Mitigation)
  AddSpellBonus(Target, 202, Mitigation)
  AddSpellBonus(Target, 203, Mitigation)
  AddProc(Target, 2, 10)
end

function proc(Caster, Target, ProcType)
  CastSpell(Target, 69070475, 1, Caster)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
  RemoveProc(Target)
end
