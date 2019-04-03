function cast(Caster, Target, Attribute, Avoidance, CombatRegen, MaxPower)
  AddSpellBonus(Target, 2, Attribute)
  AddSpellBonus(Target, 696, Avoidance)
  AddSpellBonus(Target, 673, CombatRegen)
  AddSpellBonus(Target, 501, MaxPower)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
