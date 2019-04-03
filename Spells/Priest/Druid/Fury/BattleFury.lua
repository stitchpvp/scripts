function cast(Caster, Target, CastingSpeed, Haste)
  AddSpellBonus(Target, 664, CastingSpeed)
  AddSpellBonus(Target, 617, Haste)
end

function remove(Caster, Target)
  RemoveSpellBonus(Target)
end
