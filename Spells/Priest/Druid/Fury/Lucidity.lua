function cast(Caster, Target, Sta, Int)
  AddSpellBonus(Target, 1, Sta)
  AddSpellBonus(Target, 4, Int)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
