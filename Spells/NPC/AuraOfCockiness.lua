function cast(Caster, Target, Attribute, Potency, MultiAttack, Accuracy)
  AddSpellBonus(Caster, 0, Attribute)
  AddSpellBonus(Caster, 4, Attribute)
  AddSpellBonus(Caster, 617, Potency)
  AddSpellBonus(Caster, 641, MultiAttack)
  AddSpellBonus(Caster, 682, Accuracy)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
end
