function cast(Caster, Target, RiposteChance)
  AddSpellBonus(Caster, 636, RiposteChance)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
end