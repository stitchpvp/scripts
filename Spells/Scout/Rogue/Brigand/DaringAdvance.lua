function cast(Caster, Target, DefenseDebuff, OffensiveBuff)
  AddSkillBonus(Caster, 609880714, DefenseDebuff)
  AddSkillBonus(Caster, 3048574950, OffensiveBuff)
  AddSkillBonus(Caster, 418532101, OffensiveBuff)
  AddSkillBonus(Caster, 1756482397, OffensiveBuff)
  AddSkillBonus(Caster, 3421494576, OffensiveBuff)

  AddProc(Caster, 3, 10)
end

function proc(Caster, Target, ProcType, DefenseDebuff, OffensiveBuff, ProcDmg)
  Interrupt(Caster, Target)
  ProcDamage(Caster, Target, "Interrupt", 2, ProcDmg)
end

function remove(Caster, Target)
  RemoveSkillBonus(Caster)
  RemoveProc(Caster)
end
