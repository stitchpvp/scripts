function cast(Caster, Target)
  AddProc(Target, 2, 10)
end

function proc(Caster, Target, ProcType, HateTransfer, Power)
  --ProcHeal(Caster, Caster, "Concurrence", "Power", Power)
  --ProcHeal(Caster, Target, "Concurrence", "Power", Power)
end

function remove(Caster, Target)
  RemoveProc(Target)
end