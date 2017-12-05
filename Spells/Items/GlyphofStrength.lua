function cast(caster, target, Str)
  AddSpellBonus(target, 0, Str)
end

function remove(caster, target)
  RemoveSpellBonus(target)
end
