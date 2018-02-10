function attacked(NPC, Target)
    local check = GetArchetypeName(Target)

    if check == "Mage" or check == "Priest" then
        CastSpell(Target, 1002187, 1, NPC) --[raidwide stun & dmg]
    end
end