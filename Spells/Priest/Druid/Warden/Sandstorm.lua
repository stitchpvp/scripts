function cast(Caster, Target, Block, Defensive)
  AddProc(Target, 4, 20)
  AddSpellBonus(Target, 651, Block)
  AddSkillBonus(Target, GetSkillIDByName("Parry"), Defensive)
  AddSkillBonus(Target, GetSkillIDByName("Deflection"), Defensive)
end

function proc(Caster, Target, ProcType)
  CastSpell(Target, 118678846, 1, GetCaster())
end

function remove(Caster, Target)
  RemoveProc(Target)
  RemoveSpellBonus(Target)
  RemoveSkillBonus(Target)
end
