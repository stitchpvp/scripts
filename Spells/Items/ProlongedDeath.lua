function cast(Caster, Target, UnconsciousHealth) 
  AddSpellBonus(Caster, 661, UnconsciousHealth)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
end