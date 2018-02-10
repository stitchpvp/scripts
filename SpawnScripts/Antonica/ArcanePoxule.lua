function attacked(NPC, Target)
    local check = GetArchetypeName(Target)

    if check == "Fighter" or check == "Scout" then
        CastSpell(Target, 1002187, 1, NPC) --[raidwide stun & dmg]
    end   
end