function cast(Caster, Target, StaBuff, WisBuff, ResistBuff)
  AddSpellBonus(Caster, 1, StaBuff)
  AddSpellBonus(Caster, 3, WisBuff)
  AddSpellBonus(Caster, 201, ResistBuff)
  AddSpellBonus(Caster, 202, ResistBuff)
  AddSpellBonus(Caster, 203, ResistBuff)
  AddSpellBonus(Caster, 627, 1)
  SetIllusion(Caster, 3717)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
  ResetIllusion(Caster)
end
