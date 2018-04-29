function cast(Caster, Target, Agi, BaseAvoidance, Resists, MinProcDmg, MaxProcDmg)
  AddSpellBonus(Caster, 3, Agi)
  AddSpellBonus(Caster, 696, BaseAvoidance)
  AddSpellBonus(Caster, 201, Resists)
  AddSpellBonus(Caster, 202, Resists)
  AddSpellBonus(Caster, 203, Resists)
  AddProc(Caster, 2, 20)
end

function proc(Caster, Target, Type, Agi, BaseAvoidance, Mitigation, Resists, MinProcDmg, MaxProcDmg)
  ProcDamage(Caster, Target, "Song Barrier", 6, MinProcDmg, MaxProcDmg)
end

function remove(Caster)
  RemoveProc(Caster)
end
