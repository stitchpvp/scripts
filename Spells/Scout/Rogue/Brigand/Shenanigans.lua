function cast(Caster, Target, DebuffAmt)
  AddProc(Caster, 4, 100)
  AddSkillBonus(Caster, 609880714, DebuffAmt)
  AddSkillBonus(Caster, 540022425, DebuffAmt)
  AddControlEffect(Caster, 4)

  SetSpellTriggerCount(1, 1)

  PlayAnimation(Caster, 229)

  if IsPlayer(Target) then
    SetTarget(Target, Caster)
  end
end

function proc(Caster, Target, ProcType, DebuffAmt, MinDmg, MaxDmg)
  if GetSpellTriggerCount() > 0 then
    SpellDamage(Target, 2, MinDmg, MaxDmg)
    RemoveTriggerFromSpell()
  end
end

function remove(Caster, Target)
  RemoveControlEffect(Caster, 4)
  RemoveProc(Caster)
end
