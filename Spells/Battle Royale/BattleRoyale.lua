function cast(Caster, Target, Speed, AdditionalSpeed, Amount, Unconscious, Falling)
  AddSpellBonus(Caster, 600, Amount)
  AddSpellBonus(Caster, 601, Amount)
  AddSpellBonus(Caster, 602, Amount)
  AddSpellBonus(Caster, 603, Amount)
  AddSpellBonus(Caster, 604, Amount)
  AddSpellBonus(Caster, 605, Amount)
  AddSpellBonus(Caster, 616, Speed)
  AddSpellBonus(Caster, 661, Unconscious)
  AddSpellBonus(Caster, 211, Falling)
  AddProc(Caster, 13, 100)
end

function proc(Caster, Target, ProcType, Speed, AdditionalSpeed, Amount)
  CastSpell(Caster, 215780092, 1)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
  RemoveProc(Caster)
end
