local trainer = 7720041
local spectator = 730287

function spawn(NPC)
  InitializeTournament(NPC)
  SetTempVariable(NPC, "tournament_begin", nil)
  SetTempVariable(NPC, "choice_made", nil)
  AddTournamentStartingPoint(NPC, 36.79, -0.12, 0.14)
  AddTournamentStartingPoint(NPC, -34.90, -0.12, 0.58)
end

function respawn(NPC)
  spawn(NPC)
end

function hailed(NPC, Spawn)
PlayAnimation(NPC, 13024)
  
  if not GetTempVariable(NPC, "tournament_begin") then
    local conversation = CreateConversation()
	AddConversationOption(conversation, "I'd like to register for a duel.", "list_of_register_choices")
	AddConversationOption(conversation, "I'd like to randomize a duel vs somebody in the zone.", "list_of_random_choices")
	AddConversationOption(conversation, "I'd like to look at the current battle status.", "battle_status")
	AddConversationOption(conversation, "I'd like to organize a tournament.", "tournament_draft")
	AddConversationOption(conversation, "Start a duel.", "start_tournament")
    AddConversationOption(conversation, "Nothing at the moment.")
    StartConversation(conversation, NPC, Spawn, "Welcome, " .. GetName(Spawn) .. ". What would you like to do?")
    PlayAnimation(NPC, 13024)
  else
    Say(NPC, "I'm sorry, but there is a battle going on. Please wait until it is completed and then come back to me.", Spawn)
  end
end

function list_of_register_choices(NPC, Spawn)
  if not GetTempVariable(NPC, "tournament_begin") and not GetTempVariable(NPC, "choice_made") then
    local conversation = CreateConversation()
    AddConversationOption(conversation, "1vs1, please", "register_one_vs_one")
	AddConversationOption(conversation, "2vs2, please", "register_two_vs_two")
	AddConversationOption(conversation, "3vs3, please", "register_three_vs_three")
	AddConversationOption(conversation, "4vs4, please", "register_four_vs_four")
	StartConversation(conversation, NPC, Spawn, "You chose registration. How many people are participating?")
  else
    Say(NPC, "I'm sorry, but there is a battle going on. Please wait until it is completed and then come back to me.", Spawn)
  end
end

function list_of_random_choices(NPC, Spawn)
  if not GetTempVariable(NPC, "tournament_begin") and not GetTempVariable(NPC, "choice_made") then
    local conversation = CreateConversation()
    AddConversationOption(conversation, "1vs1, please", "randomize_one_vs_one")
	AddConversationOption(conversation, "2vs2, please", "randomize_two_vs_two")
	AddConversationOption(conversation, "3vs3, please", "randomize_three_vs_three")
	AddConversationOption(conversation, "4vs4, please", "randomize_four_vs_four")
	StartConversation(conversation, NPC, Spawn, "You chose randomize. Please pick one of the options to randomize.")
  else
    Say(NPC, "I'm sorry, but there is a battle going on. Please wait until it is completed and then come back to me.", Spawn)
  end
end

function tournament_draft(NPC, Spawn)
  if not GetTempVariable(NPC, "tournament_begin") and not GetTempVariable(NPC, "choice_made") then
    local conversation = CreateConversation()
    AddConversationOption(conversation, "Randomize", "tournament_draft_randomize")
	AddConversationOption(conversation, "Manual", "tournament_draft_manual")
	StartConversation(conversation, NPC, Spawn, "Tournament Draft system: randomly or manually assign players in the zone?")
  else
    Say(NPC, "I'm sorry, but there is a battle going on. Please wait until it is completed and then come back to me.", Spawn)
  end
end

function battle_status(NPC, Spawn)
  Say(NPC, "The current battle status is: " .. GetTempVariable(NPC, "opponent_1") .. " vs " .. GetTempVariable(NPC, "opponent_2") .. ".", Spawn)
end

function register_one_vs_one(NPC, Spawn)
  AddPlayerToTournament(NPC, Spawn)
end

function start_tournament(NPC, Spawn)
  StartTournament(NPC)
end

function draft_complete(NPC, Spawn)
end

function register_two_vs_two(NPC, Spawn)
end

function register_three_vs_three(NPC, Spawn)
end

function register_four_vs_four(NPC, Spawn)
end

function randomize_one_vs_one(NPC, Spawn)
end

function randomize_two_vs_two(NPC, Spawn)
end

function randomize_three_vs_three(NPC, Spawn)
end

function randomize_four_vs_four(NPC, Spawn)
end

function tournament_draft_manual(NPC, Spawn)
end

function tournament_draft_randomize(NPC, Spawn)
end