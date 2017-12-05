function cast(Caster, Target)
  AddProc(Caster, 4, 33)
end

function proc(Caster, Target, ProcType, MinPercentage, MaxPercentage)
  local percentage = math.random(MinPercentage, MaxPercentage)
  local amount = GetMaxHP(Caster) * (percentage / 100)

  ProcHeal(Caster, Caster, "Adrenal Flow", "Heal", amount)
end

function remove(Caster, Target)
  RemoveProc(Caster)
end
