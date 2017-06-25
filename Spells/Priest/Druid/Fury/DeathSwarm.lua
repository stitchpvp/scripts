function cast(Caster, Target, MinDmg, MaxDmg, Debuff)
  AddSkillBonus(Target, 609880714, Debuff)
  SpellDamage(Target, 7, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 7, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveSkillBonus(Target)
end
