function cast(Caster, Target)
  AddSpellBonus(Target, 628, 1)
  SetVision(Target, 4)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
  SetVision(Target, 0)
end