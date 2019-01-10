function cast(Caster, Target)
  AddProc(Caster, 16, 20)
end

function proc(Caster, Target, Type, Speed)
  CureByControlEffect(Caster, 99, 4, "Cure") -- Stun
  CureByControlEffect(Caster, 99, 5, "Cure") -- Root
  AddSpellBonus(Caster, 616, Speed)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
  RemoveProc(Caster)
end
