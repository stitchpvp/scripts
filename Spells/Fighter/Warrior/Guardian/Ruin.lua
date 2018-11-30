function cast(Caster, Target, MinDmg, MaxDmg, MinTick, MaxTick, DebuffAmt)
  SpellDamage(Target, 2, MinDmg, MaxDmg)

  AddSkillBonus(Target, 418532101, DebuffAmt)
  AddSkillBonus(Target, 3421494576, DebuffAmt)
  AddSkillBonus(Target, 3048574950, DebuffAmt)
end

function tick(Caster, Target, MinDmg, MaxDmg, MinTick, MaxTick)
  SpellDamage(Target, 2, MinTick, MaxTick)
end

function remove(Caster, Target)
  RemoveSkillBonus(Target)
end
