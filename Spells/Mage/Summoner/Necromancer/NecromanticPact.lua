function precast (Caster, Target)
  local Pet = GetPet(Caster)

  if Pet ~= nil then
    return true
  else
    return false
  end
end

function cast(Caster, Target)
    AddProc(Target, 1, 100)
    AddProc(Target, 2, 100)
    
end

function proc(Caster, Target, Type, Debuff)
    if Type == 1 then
    AddSpellBonus(Target, 201, Debuff)
    elseif Type == 2 then
    AddSpellBonus(Target, 201, Debuff)
    end
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveProc(Target)    
end