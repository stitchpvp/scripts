--[[
	Script Name		:	TrainingDummy.lua
	Script Purpose	:	An unkillable spawn for you to whack on
	Script Author	:	Jabantiz
	Script Date		:	7/14/2014
	Script Notes	:	None
--]]

function spawn(NPC)
	SetBrainTick(NPC, 600000)
	SetLuaBrain(NPC)
end

function respawn(NPC)
  spawn(NPC)
end

function Think(NPC)
	return
end
