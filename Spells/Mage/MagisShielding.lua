function cast(Caster, Target, StaBuff, WisBuff, ResistBuff)
  AddSpellBonus(Caster, 1, StaBuff)
  AddSpellBonus(Caster, 204, ResistBuff)
  AddSpellBonus(Caster, 201, ResistBuff)
  AddSpellBonus(Caster, 202, ResistBuff)
  AddSpellBonus(Caster, 203, ResistBuff)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
end
