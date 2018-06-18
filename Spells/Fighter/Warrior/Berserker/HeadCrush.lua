function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 2, MinDmg, MaxDmg)
  Interrupt(Caster, Target)
end

function remove(Caster, Target)
  RemoveSkillBonus(Target)
end
