function cast(caster, target)
  AddSpellBonus(target, 3, 6.4)
end

function remove(caster, target)
  RemoveSpellBonus(target)
end
