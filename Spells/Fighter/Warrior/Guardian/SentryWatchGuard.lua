function cast(Caster, Target, DmgReduction, Heal)
  local hp = GetMaxHP(Target) * Heal
  AddProc(Caster, 2, 100)
  SpellHeal(Target, "Heal", hp, hp, 2, 1)
end

function proc(Caster, Target, ProcType, DmgReduction, Heal, Hate)
  AddHate(Caster, Target, Hate, 1)
end

function remove(Caster, Target)
  RemoveProc(Caster)
end
