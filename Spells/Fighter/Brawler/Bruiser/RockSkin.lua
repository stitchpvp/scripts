function cast(Caster, Target, PhysMitigation, OtherMitigation)
  AddSpellBonus(Caster, 204, PhysMitigation)
  AddSpellBonus(Caster, 201, OtherMitigation)
  AddSpellBonus(Caster, 202, OtherMitigation)
  AddSpellBonus(Caster, 203, OtherMitigation)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
end