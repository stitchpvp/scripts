function cast(Caster, Target, HateLoss)
  AddSpellBonus(Caster, 624, HateLoss)
  AddProc(Caster, 3, 25)
end

function proc(Caster, Target, ProcType)
  CastSpell(Target, 137970356, 1, Caster)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
  RemoveProc(Caster)
end
