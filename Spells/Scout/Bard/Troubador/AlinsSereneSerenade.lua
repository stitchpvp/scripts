function cast(Caster, Target, HateGainDecrease, DehateAmt)
  if GetArchetypeName(Target) ~= "Fighter" then
    AddSpellBonus(Target, 624, HateGainDecrease)
    AddProc(Target, 2, 100)
  end
end

function proc(Caster, Target, Type, HateGainDecrease, DehateAmt)
  AddHate(Caster, Target, DehateAmt, 1)
end

function remove(Caster, Target)
  RemoveProc(Target)
end