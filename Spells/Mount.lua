function cast(Caster, Target, Mitigation, Speed, MountID)
  AddSpellBonus(Caster, 201, Mitigation)
  AddSpellBonus(Caster, 202, Mitigation)
  AddSpellBonus(Caster, 203, Mitigation)
  SetSpeed(Caster, Speed)
  SetMount(Caster, MountID)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
  SetSpeed(Caster, 0)
  SetMount(Caster, 0)
end
