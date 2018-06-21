function cast(Caster, Target, MitigationBuff, MitigationDebuff)
  AddSpellBonus(Target, 204, MitigationBuff)
  AddSpellBonus(Caster, 204, MitigationDebuff)
end

function remove(Caster, Target)
  RemoveSpellBonus(Caster)
  RemoveSpellBonus(Target)
end