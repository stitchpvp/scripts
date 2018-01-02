function cast(Caster, Target, Buff)
    local SpeedAmount = Buff;

    if Target == Caster then
        SpeedAmount = SpeedAmount + 4
    end

    AddSpellBonus(Target, 609, SpeedAmount)
end

function remove(Caster, Target, Buff)
    RemoveSpellBonus(Target)
end
