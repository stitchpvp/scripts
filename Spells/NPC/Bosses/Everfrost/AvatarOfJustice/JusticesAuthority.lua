function cast(Caster, Target, Chance, Power)
  AddProc(Caster, 2, Chance)
end

function proc(Caster, Target, ProcType, Chance, Power)
local power_percentage = GetMaxPower(Target) * Power
local hp_check = GetHP(Caster) / GetMaxHP(Caster)

  if hp_check > 0.50 then
    ModifyPower(Target, power_percentage)
  elseif hp_check <= 0.50 then
    return
  end
end

function remove(Caster, Target)
  RemoveProc(Caster)
end
