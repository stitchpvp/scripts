function cast(Caster, Target, MinDmg, MaxDmg)
  SetSpellTriggerCount(1, 1)
  AddProc(Target, 13, 100)
  SpellDamage(Target, 3, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 3, MinDmg, MaxDmg)
end

function proc(Caster, Target, ProcType, MinDmg, MaxDmg)
  if GetSpellTriggerCount() > 0 then
    local spell_caster = GetCaster()
    CastSpell(spell_caster, 227129044, 1, Target)
    RemoveTriggerFromSpell()
  end
end

function remove(Caster, Target)
  RemoveProc(Target)
end