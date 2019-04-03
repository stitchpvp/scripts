function cast(Caster, Target, DmgReduction, Dispel, MovementSpeed)
  --AddSpellBonus(Target, 0, DmgReduction)
  AddSpellBonus(Target, 616, MovementSpeed)
  CureByControlEffect(Target, Dispel, 5, "Cure") -- Root
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
