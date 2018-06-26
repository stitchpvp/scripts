function cast(Caster, Target)
  AddSpellBonus(Target, 202, -500) --disease mitigation
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end