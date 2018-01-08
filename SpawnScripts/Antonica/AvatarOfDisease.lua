function attacked(NPC)
  Say(NPC, "A plague of suffering will be your only reward!")

  AddTimer(NPC, 5000, "second_sentence")
end

function second_sentence(NPC)
  Say(NPC, "I will wrap you in a protective cloak of virulent disease, just to be fair.")
end