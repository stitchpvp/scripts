function cast(Caster, Target, HateTransfer, Amount)
  AddThreatTransfer(Target, Caster, HateTransfer)
  AddSpellBonus(Target, 817, Amount)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
  RemoveThreatTransfer(Caster)
end