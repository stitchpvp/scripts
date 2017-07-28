function cast(caster, target, Str)
  AddSpellBonus(Target, 0, Str)
end

function remove(caster, target)
  RemoveSpellBonus(Target)
end