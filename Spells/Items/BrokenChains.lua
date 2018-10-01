function cast(Caster, Target) 
  AddProc(Caster, 16, 20)
end

function proc(Caster, Target, Type, Speed)
  CureByControlEffect(99, 4, "Cure", 0, Caster) -- Stun
  CureByControlEffect(99, 5, "Cure", 0, Caster) -- Root
  AddSpellBonus(Caster, 616, Speed)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
  RemoveProc(Caster)
end