function cast(Caster, Target, FallingSpeed, AirSpeed)
  AddSpellBonus(Caster, 612, AirSpeed)
  AddProc(Caster, 1, 100)
  AddProc(Caster, 2, 100)
  AddProc(Caster, 11, 100)
  AddProc(Caster, 12, 100
  AddProc(Caster, 15, 100)
  AddStoneskin(Caster, 9999, 1, 1)
  AddImmunitySpell(Caster, 1)
  AddImmunitySpell(Caster, 2)
  AddImmunitySpell(Caster, 3)
  AddImmunitySpell(Caster, 4)
  AddImmunitySpell(Caster, 5)
  AddImmunitySpell(Caster, 6)
  SetServerControlFlag(Caster, 4, 32, 1)
end

function proc(Caster, Target, ProcType, FallingSpeed, AirSpeed)
  CancelSpell()
end

function remove(Caster, Target)
  RemoveImmunitySpell(Caster, 1)
  RemoveImmunitySpell(Caster, 2)
  RemoveImmunitySpell(Caster, 3)
  RemoveImmunitySpell(Caster, 4)
  RemoveImmunitySpell(Caster, 5)
  RemoveImmunitySpell(Caster, 6)
  RemoveStoneskin(Caster)
  RemoveSpellBonus(Caster)
  RemoveProc(Caster)
  SetServerControlFlag(Caster, 4, 32, 0)
end
