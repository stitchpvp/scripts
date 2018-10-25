function cast(Caster, Target, Amount, HateTransfer)
  AddThreatTransfer(Caster, Target, HateTransfer)
end

function remove(Caster, Target)
  RemoveThreatTransfer(Caster)
end
