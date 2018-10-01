function cast(Caster, Target) 
  AddProc(Caster, 15, 100)
end

function proc(Caster, Target, Type, Power)
  ProcHeal(Caster, Caster, "Mana Trickle", "Power", Power)
end

function remove(Caster, Target)
  RemoveProc(Caster)
end