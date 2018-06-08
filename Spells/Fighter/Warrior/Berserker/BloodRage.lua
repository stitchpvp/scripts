function cast(Caster, Target)
  AddProc(Caster, 4, 33)
end

function proc(Caster, Target, ProcType, MinHeal, MaxHeal)
  ProcHeal(Caster, Caster, "Adrenal Flow", "Heal", MinHeal, MaxHeal)
end

function remove(Caster, Target)
  RemoveProc(Caster)
end
