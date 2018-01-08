function hailed(NPC, Spawn)
  Say(NPC, "You deem yourselves worthy to challenge the divine?")

  AddTimer(NPC, 5000, "second_sentence")
end

function second_sentence(NPC)
  Say(NPC, "You will soon learn the error of your ways!")
end

function attacked(NPC)
  Say(NPC, "You dare challenge one so benevolent?")
end