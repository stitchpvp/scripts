function attacked(NPC, Target)
    local check = GetArchetypeName(Target)

    if check == "Fighter" or check == "Scout" then
        CastSpell(Target, 1002187, 1, NPC) --[Infectious Spores, raidwide stun & dmg]
    end
end

function healthchanged(NPC, Target)
    local check = GetArchetypeName(Target)

    if check == "Fighter" or check == "Scout" then
        CastSpell(Target, 1002187, 1, NPC) --[Infectious Spores, raidwide stun & dmg]
    end
end