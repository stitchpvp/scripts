function examined(Item, Spawn)
  local con = CreateConversation()
  AddConversationOption(con, "Continue reading.", "read_1")
  AddConversationOption(con, "Put note away.", "close_dialog")
  StartDialogConversation(con, 2, Item, Spawn, "" .. GetName(Spawn) .. ", Vamir informed me that you are serving him well. I have set aside funds for him to reward you for your service. As I told you before, loyalty and service are highly valued and will be amply rewarded. I am impressed with your work so far, and have a new mission for you.")

  if HasQuest(Spawn, 194) then
    SendMessage(Spawn, "You are already on the Quest \"Disruption for Distraction\".", "white")
  end

  if HasCompletedQuest(Spawn, 194) then
    SendMessage(Spawn, "You already completed the Quest \"Disruption for Distraction\".", "white")
  end
end

function read_1(Item, Spawn)
  local con = CreateConversation()
  AddConversationOption(con, "Continue reading.", "read_2")
  AddConversationOption(con, "Put note away.", "close_dialog")
  StartDialogConversation(con, 2, Item, Spawn, "We have discovered that the Tunarian Alliance's main source of income is from a mine in the Wilderwood. The mine is perfect setting to employ our next strategy for conquering the island: distraction. By causing a disruption at the mine, it will allow us to flank the Qeynosians from the opposite side.")
end

function read_2(Item, Spawn)
  local con = CreateConversation()
  AddConversationOption(con, "Put note away.", "close_dialog")
  StartDialogConversation(con, 2, Item, Spawn, "Speak with Coercer Zlith, he has already been informed of the action you will be taking.")
end

function close_dialog(Item, Spawn)
  CloseItemConversation(Item, Spawn)
end
