function precast(Caster, Target)
    if IsEpic(Target) then
        return false, 43
    end
    return true
end

function cast(Caster, Target)
    AddControlEffect(Target, 5)
    AddProc(Target, 2, 15.0)
end

function proc(Caster, Target)
  CancelSpell()
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 5)
    
end
