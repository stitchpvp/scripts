function cast(Caster, Target, Agi, BaseAvoidance, Resists, MinProcDmg, MaxProcDmg, MoveSpeed)
  AddSpellBonus(Caster, 3, Agi)
  AddSpellBonus(Caster, 696, BaseAvoidance)
  AddSpellBonus(Caster, 201, Resists)
  AddSpellBonus(Caster, 202, Resists)
  AddSpellBonus(Caster, 203, Resists)
  AddSpellBonus(Caster, 616, MoveSpeed)
  AddProc(Caster, 2, 20)
end

function proc(Caster, Target, Type, Agi, BaseAvoidance, Mitigation, Resists, MinProcDmg, MaxProcDmg, MoveSpeed)
  ProcDamage(Caster, Target, "Song Barrier", 6, MinProcDmg, MaxProcDmg)
end

function remove(Caster)
  RemoveProc(Caster)
end
