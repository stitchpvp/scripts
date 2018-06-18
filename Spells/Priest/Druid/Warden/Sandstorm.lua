function cast(Caster, Target, Block, Defensive)
  AddProc(Target, 4, 20)
  AddSpellBonus(Target, 651, Block)
  AddSkillBonus(Target, GetSkillIDByName("Parry"), Defensive)
  AddSkillBonus(Target, GetSkillIDByName("Deflection"), Defensive)
end

function proc(Caster, Target, ProcType)
  local spell_caster = GetCaster()
  CastSpell(Caster, 118678846, 1, spell_caster)
end

function remove(Caster, Target)
  RemoveProc(Target)
  RemoveSpellBonus(Target)
  RemoveSkillBonus(Target)
end
