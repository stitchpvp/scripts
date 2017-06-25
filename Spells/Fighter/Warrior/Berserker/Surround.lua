function cast(Caster, Target, MinDmg, MaxDmg, DebuffAmt)
  AddSkillBonus(Target, 2638198038, DebuffAmt)
  SpellDamage(Target, 1, MinDmg, MaxDmg)
  Interrupt(Caster, Target)
end

function remove(Caster, Target)
  RemoveSkillBonus(Target)
end