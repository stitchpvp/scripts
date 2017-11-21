function cast(Caster, Target, PowerRegen)
  AddSpellBonus(Target, 601, PowerRegen)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end