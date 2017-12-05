function cast(Caster, Target, DebuffAmt, BuffAmt)
  AddSkillBonus(Caster, 609880714, DebuffAmt)
  AddSkillBonus(Caster, 418532101, BuffAmt)
  AddSkillBonus(Caster, 3048574950, BuffAmt)
  AddSkillBonus(Caster, 3421494576, BuffAmt)

  AddProc(Caster, 3, 10)
end

function proc(Caster, Target, ProcType, DebuffAmt, BuffAmt, MinDmg, MaxDmg)
  ProcDamage(Caster, Target, "Furious Assault", 2, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveSkillBonus(Caster)
  RemoveProc(Caster)
end
