function cast(Caster, Target, DebuffAmt)
  AddProc(Caster, 4, 100)
  AddSkillBonus(Caster, 609880714, DebuffAmt)
  AddSkillBonus(Caster, 540022425, DebuffAmt)
  PlayAnimation(Caster, 229)
  AddControlEffect(Caster, 4)

  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  end
end

function proc(Caster, Target, ProcType, DebuffAmt, MinDmg, MaxDmg)
  SpellDamage(Target, 2, MinDmg, MaxDmg)
  CancelSpell()
end

function remove(Caster, Target)
  RemoveControlEffect(Caster, 4)
  RemoveProc(Caster)
  RemoveSkillBonus(Caster)
end
