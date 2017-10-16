function cast(Caster, Target, BonusAmt, HateAmt, Dmg)
  AddProc(Target, 4, 100)
  AddSpellBonus(Target, 201, BonusAmt)
  AddSpellBonus(Target, 202, BonusAmt)
  AddSpellBonus(Target, 203, BonusAmt)
end

function proc(Caster, Target, Type, BonusAmt, HateAmt, Dmg)
  AddHate(Caster, Target, HateAmt)

  ProcDamage(Caster, Target, "Caress Feedback", 8, Dmg)

  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  end
end

function remove(Caster, Target)
  RemoveProc(Target)
end