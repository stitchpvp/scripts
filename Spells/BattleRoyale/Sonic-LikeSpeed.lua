function cast(Caster, Target, Speed)
  AddSpellBonus(Caster, 616, Speed)
  AddProc(Caster, 2, 100)
  AddProc(Caster, 15, 100)
end

function proc(Caster, Target, ProcType, Speed)
  CancelSpell()
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
  RemoveProc(Caster)
end
