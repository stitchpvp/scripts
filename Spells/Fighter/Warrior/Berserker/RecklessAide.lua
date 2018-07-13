function cast(Caster, Target, BaseAvoidance)
  AddSpellBonus(Caster, 696, BaseAvoidance)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
end