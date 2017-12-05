--[[
	Script Name	: ZoneScripts/NektroposCastle.lua
	Script Purpose	: Nektropos Castle
	Script Author	: smash
	Script Date	: 2016.1.24
	Script Notes	:
--]]

function init_zone_script(Zone)
    SetLocationProximityFunction(Zone, -0.05, -0.34, 33.54, 10, "OfferVisionsOfHatred", "Leave")
end

function OfferVisionsOfHatred(Zone, Player)
    if CanReceiveQuest(Player, 173) then
        OfferQuest(nil,Player, 173)
        SendMessage(Player, "A strange hatred grows inside you.")
    end
end

function Leave(Zone, Player)
end
