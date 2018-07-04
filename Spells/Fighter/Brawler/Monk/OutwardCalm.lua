function cast(Caster, Target, WardAmt)
  local base_hp = GetMaxHP(Caster) * 0.30
  local ward = base_hp + WardAmt

  AddWard(Caster, ward, 0, 2)
end

function remove(Caster, Target)
  RemoveWard(Caster)
end