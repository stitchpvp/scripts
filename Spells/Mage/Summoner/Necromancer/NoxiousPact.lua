function precast (Caster, Target)
  local Pet = GetPet(Caster)

  if Pet ~= nil then
    return true
  else
    return false
  end
end

function cast(Caster, Target)
    local Pet = GetPet(Caster)
    AddProc(Pet, 1, 100)
    AddProc(Pet, 2, 100)
    
end

function proc(Caster, Target, Type, Debuff, SpellMit, procDmg)
    if Type == 1 then
    ProcDamage(Caster, Target, "Exposed Noxious", 8, procDmg)
    AddSpellBonus(Target, 201, Debuff)
    elseif Type == 2 then
    ProcDamage(Caster, Target, "Exposed Noxious", 8, procDmg)
    AddSpellBonus(Caster, 201, SpellMit)
    end
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSpellBonus(Caster)
    RemoveProc(Target)
    RemoveProc(Caster)
    
end