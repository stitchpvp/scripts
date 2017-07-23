function precast (Caster, Target)
  local Pet = GetPet(Caster)

  if Pet ~= nil then
    return true
  else
    return false
  end
end


function cast(Caster, Target, agg, procDmg, procHeal, atkSpeed, maxHP, hateGain, spellMit, procHateMin, procHateMax)
    AddSkillBonus(Target, GetSkillByName("Aggression"), agg)
    AddSpellBonus(Target, 613, atkSpeed)
    --AddSpellBonus(Target, 607, maxHP)
    AddSpellBonus(Target, 619, hateGain)
    AddSpellBonus(Target, 201, spellMit)
    AddSpellBonus(Target, 202, spellMit)
    AddSpellBonus(Target, 203, spellMit)

    AddProc(Target, 1, 100)
    AddProc(Target, 2, 100)
    
end

function proc(Caster, Target, Type, agg, procDmg, procHeal, atkSpeed, maxHP, hateGain, spellMit, procHateMin, procHateMax)
    if Type == 1 then
        if procHateMax ~= nil and procHateMin < procHateMax then
            AddHate(Target, math.random(procHateMin, procHateMax))
        else
            AddHate(Target, procHateMin)
        end
    elseif Type == 2 then
        ProcDamage(Caster, Target, "Grisly Feedback", 8, procDmg)
        SpellHeal("Heal", procHeal, 0, Caster)
    end
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
    RemoveProc(Target)
end