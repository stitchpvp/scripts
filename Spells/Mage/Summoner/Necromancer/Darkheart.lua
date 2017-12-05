function cast(Caster, Target, ItemID)
    if not HasItem(Target, ItemID) then
        SummonItem(Target, ItemID)
    end
end
