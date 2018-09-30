function cast(Caster, Target, PhysMitigation, OtherMitigation, SelfSnare)
  AddSpellBonus(Caster, 204, PhysMitigation)
  AddSpellBonus(Caster, 201, OtherMitigation)
  AddSpellBonus(Caster, 202, OtherMitigation)
  AddSpellBonus(Caster, 203, OtherMitigation)
  SetSpellSnareValue(SelfSnare, Caster)
  AddControlEffect(Caster, 11)
end

function remove(Caster, Target)
  RemoveControlEffect(Caster, 11)
  RemoveSpellBonus(Caster)
end