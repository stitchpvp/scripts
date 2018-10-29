function cast(Caster, Target, Attribute, Potency, MultiAttack, Accuracy)
  AddSpellBonus(Caster, 0, Attribute)
  AddSpellBonus(Caster, 4, Attribute)
  AddSpellBonus(Caster, 617, Potency)
  AddSpellBonus(Caster, 641, MultiAttack)
  AddSpellBonus(Caster, 682, Accuracy)
  AddProc(Caster, 1, 100)
end


function proc(Caster, Target, ProcType)
  CastSpell(Target, 235866740, 1, Caster)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
  RemoveProc(Caster)
end
