function cast(Caster, Target, MitigationBuff, MitigationDebuff)
  AddSpellBonus(Target, 201, MitigationBuff)
  AddSpellBonus(Caster, 201, MitigationDebuff)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
  RemoveSpellBonus(Target)
end