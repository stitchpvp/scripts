function cast(Caster, Target, StaAmt, AvoidanceAmt, ResistAmt)
  if GetGender(Caster) == 1 then
    SetIllusion(Caster, 303)
  else
    SetIllusion(Caster, 1372)
  end

  AddSpellBonus(Caster, 1, StaAmt)

  AddSpellBonus(Caster, 696, AvoidanceAmt)

  AddSpellBonus(Caster, 201, ResistAmt)
  AddSpellBonus(Caster, 202, ResistAmt)
  AddSpellBonus(Caster, 203, ResistAmt)

  AddSpellBonus(Caster, 627, 1)
end

function remove(Caster, Target)
  ResetIllusion(Caster)
  RemoveSpellBonus(Caster)
end
