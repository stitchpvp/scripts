function cast(Caster, Target, Amount, HateTransfer)
  AddSpellBonus(Target, 817, Amount)
  AddThreatTransfer(Target, Caster, HateTransfer)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
  RemoveThreatTransfer(Caster)
end