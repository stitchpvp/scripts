function cast(Caster, Target, PowerRegen)
  AddSpellBonus(Target, 673, PowerRegen)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
