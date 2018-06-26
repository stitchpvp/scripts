function cast(Caster, Target)
  AddSpellBonus(Caster, 664, -10) --Casting speed
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end