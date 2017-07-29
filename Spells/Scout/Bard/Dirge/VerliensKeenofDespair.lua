function cast(Caster, Target, DebuffAmt )
   
   AddSpellBonus(Target, 202 DebuffAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
