function spawn(npc)
  SetTimers(npc)
end

function SetTimers(npc)
  AddTimer(npc, 1000, "FiveMinutesLeft")
  AddTimer(npc, 60000, "FourMinutesLeft")
  AddTimer(npc, 120000, "ThreeMinutesLeft")
  AddTimer(npc, 180000, "TwoMinutesLeft")
  AddTimer(npc, 240000, "OneMinuteLeft")
  AddTimer(npc, 300000, "CastPortal")
end

function FiveMinutesLeft(npc)
  local spawn = GetSpawn(npc, 330508)
  Say(spawn, "Only five more minutes until the ritual is complete.")
end

function FourMinutesLeft(npc)
  local spawn = GetSpawn(npc, 330508)
  Say(spawn, "Only four more minutes until the ritual is complete.")
end

function ThreeMinutesLeft(npc)
  local spawn = GetSpawn(npc, 330508)
  Say(spawn, "Only three more minutes until the ritual is complete.")
end

function TwoMinutesLeft(npc)
  local spawn = GetSpawn(npc, 330508)
  Say(spawn, "Only two more minutes until the ritual is complete.")
end

function OneMinuteLeft(npc)
  local spawn = GetSpawn(npc, 330508)
  Say(spawn, "Only one more minute until the ritual is complete.")
end

function CastPortal(npc)
  CastSpell(npc, 1001289, 1)
  SetTimers(npc)
end