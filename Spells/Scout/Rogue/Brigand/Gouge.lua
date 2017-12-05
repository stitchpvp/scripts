function precast(Caster, Target)
  return IsBehind(Caster, Target) == false or IsFlanking(Caster, Target)
end

function cast(Caster, Target, MinDmg, MaxDmg, Debuff)
  AddSkillBonus(Target, 540022425, Debuff)
  SpellDamage(Target, 2, MinDmg, MaxDmg)
end

function remove(Caster, Target)
  RemoveSkillBonus(Target)
end
