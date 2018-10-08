function cast(Caster, Target, HateAmt, Dmg, Resistances)
  AddProc(Target, 4, 100)
  AddSpellBonus(Caster, 201, Resistances)
  AddSpellBonus(Caster, 202, Resistances)
  AddSpellBonus(Caster, 203, Resistances)
end

function proc(Caster, Target, Type, HateAmt, Dmg, Resistances)
  ProcDamage(Caster, Target, "Caress Feedback", 8, Dmg)

  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  else
    AddHate(Caster, Target, HateAmt, 1)
  end
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
  RemoveProc(Target)
end