function cast(Caster, Target)
  AddSpellBonus(Target, 634, 1)
  SetVision(Target, 4)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
  SetVision(Target, 0)
end
