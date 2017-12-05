allow_defined = true
ignore = {"131", "542"}
max_line_length = false
unused_args = false
unused_globals = false

std = {
  globals = {
    "AddCoin",
    "AddControlEffect",
    "AddConversationOption",
    "AddHate",
    "AddImmunitySpell",
    "AddLanguage",
    "AddLootCoin",
    "AddLootItem",
    "AddMultiFloorLift",
    "AddOptionWindowOption",
    "AddPrimaryEntityCommand",
    "AddProc",
    "AddQuestPrereqClass",
    "AddQuestPrereqFaction",
    "AddQuestPrereqItem",
    "AddQuestPrereqModelType",
    "AddQuestPrereqQuest",
    "AddQuestPrereqRace",
    "AddQuestPrereqTradeskillClass",
    "AddQuestPrereqTradeskillLevel",
    "AddQuestRewardCoin",
    "AddQuestRewardFaction",
    "AddQuestRewardItem",
    "AddQuestSelectableRewardItem",
    "AddQuestStep",
    "AddQuestStepChat",
    "AddQuestStepCompleteAction",
    "AddQuestStepCraft",
    "AddQuestStepFailureAction",
    "AddQuestStepHarvest",
    "AddQuestStepKill",
    "AddQuestStepLocation",
    "AddQuestStepObtainItem",
    "AddQuestStepProgressAction",
    "AddQuestStepSpell",
    "AddSkillBonus",
    "AddSpawnAccess",
    "AddSpawnIDAccess",
    "AddSpawnSpellBonus",
    "AddSpellBonus",
    "AddSpellBookEntry",
    "AddSpellTimer",
    "AddStepProgress",
    "AddThreatTransfer",
    "AddTimer",
    "AddToWard",
    "AddTransportSpawn",
    "AddWard",
    "ApplySpellVisual",
    "Attack",
    "Bind",
    "BlurVision",
    "BreatheUnderwater",
    "CanHarvest",
    "CanReceiveQuest",
    "CancelSpell",
    "CastEntityCommand",
    "CastSpell",
    "Charm",
    "CheckRaceType",
    "ClearEncounter",
    "ClearHate",
    "CloseConversation",
    "CloseItemConversation",
    "CompareSpawns",
    "CopySpawnAppearance",
    "CreateConversation",
    "CreateOptionWindow",
    "CureByControlEffect",
    "CureByType",
    "Despawn",
    "DismissPet",
    "dofile",
    "Emote",
    "EndAutoMount",
    "FaceTarget",
    "Gate",
    "GetAgi",
    "GetAgiBase",
    "GetArchetypeName",
    "GetCharmedPet",
    "GetClass",
    "GetClassName",
    "GetCoinMessage",
    "GetCosmeticPet",
    "GetCurrentZoneSafeLocation",
    "GetCurrentZoneSafeLocation",
    "GetDeityPet",
    "GetDistance",
    "GetEncounter",
    "GetEncounterSize",
    "GetEquippedItemByID",
    "GetEquippedItemBySlot",
    "GetFactionAmount",
    "GetFollowTarget",
    "GetGender",
    "GetGroup",
    "GetHP",
    "GetHateList",
    "GetHeading",
    "GetInt",
    "GetIntBase",
    "GetItemByID",
    "GetItemCount",
    "GetItemSkillReq",
    "GetItemType",
    "GetLevel",
    "GetLootCoin",
    "GetMaxHP",
    "GetMaxHPBase",
    "GetMaxPower",
    "GetMaxPowerBase",
    "GetModelType",
    "GetMostHated",
    "GetMount",
    "GetName",
    "GetOwner",
    "GetPet",
    "GetPlayerHistory",
    "GetPlayersInZone",
    "GetPower",
    "GetProcPercentageForWeapon",
    "GetQuest",
    "GetQuestCompleteCount",
    "GetQuestFlags",
    "GetQuestStep",
    "GetQuestStepProgress",
    "GetRace",
    "GetRaceBaseType",
    "GetRaceName",
    "GetRaceType",
    "GetRunbackDistance",
    "GetServerVariable",
    "GetSkill",
    "GetSkillIDByName",
    "GetSkillMaxValue",
    "GetSkillName",
    "GetSkillValue",
    "GetSpawn",
    "GetSpawnByGroupID",
    "GetSpawnByLocationID",
    "GetSpawnGroupID",
    "GetSpawnID",
    "GetSpawnLocationID",
    "GetSpawnLocationPlacementID",
    "GetSpeed",
    "GetSpellName",
    "GetSpellTriggerCount",
    "GetSta",
    "GetStaBase",
    "GetStr",
    "GetStrBase",
    "GetTarget",
    "GetTaskGroupStep",
    "GetTempVariable",
    "GetTradeskillClass",
    "GetTradeskillClassName",
    "GetTradeskillLevel",
    "GetVariableValue",
    "GetWardAmountLeft",
    "GetWeaponDamageType",
    "GetWis",
    "GetWisBase",
    "GetX",
    "GetY",
    "GetZ",
    "GetZone",
    "GetZoneID",
    "GetZoneName",
    "GiveLoot",
    "GiveQuestItem",
    "GiveQuestReward",
    "HandInCollections",
    "Harvest",
    "HasCollectionsToHandIn",
    "HasCompletedQuest",
    "HasFreeSlot",
    "HasGroup",
    "HasItem",
    "HasItemEquipped",
    "HasLanguage",
    "HasMoved",
    "HasPendingLoot",
    "HasPendingLootItem",
    "HasQuest",
    "HasRecipeBook",
    "HasRecovered",
    "HasSpellEffect",
    "Interrupt",
    "ipairs",
    "IsAlive",
    "IsBehind",
    "IsBindAllowed",
    "IsCasting",
    "IsEpic",
    "IsFlanking",
    "IsFollowing",
    "IsGateAllowed",
    "IsGroundSpawn",
    "IsHeroic",
    "IsInCombat",
    "IsInvis",
    "IsMezzed",
    "IsMezzedOrStunned",
    "IsNight",
    "IsOnAutoMount",
    "IsPet",
    "IsPlayer",
    "IsStealthed",
    "IsStunned",
    "KillSpawn",
    "KillSpawnByDistance",
    "Knockback",
    "LastSpellAttackHit",
    "math",
    "ModifyHP",
    "ModifyPower",
    "MoveToLocation",
    "MovementLoopAddLocation",
    "OfferQuest",
    "PauseMovement",
    "PlayAnimation",
    "PlayFlavor",
    "PlaySound",
    "PlayVoice",
    "ProcDamage",
    "ProcHeal",
    "ProcessMelee",
    "ProcessSpell",
    "ProvidesQuest",
    "QuestIsComplete",
    "QuestReturnNPC",
    "QuestStepIsComplete",
    "RegisterQuest",
    "Reload",
    "RemoveCoin",
    "RemoveControlEffect",
    "RemoveImmunitySpell",
    "require",
    "RemoveInvis",
    "RemoveItem",
    "RemoveLootItem",
    "RemoveProc",
    "RemoveQuestStep",
    "RemoveSkillBonus",
    "RemoveSpawnAccess",
    "RemoveSpawnIDAccess",
    "RemoveSpell",
    "RemoveSpellBonus",
    "RemoveStealth",
    "RemoveThreatTransfer",
    "RemoveTriggerFromSpell",
    "RemoveWard",
    "ResetIllusion",
    "ResetQuestStep",
    "ResumeMovement",
    "Resurrect",
    "Runback",
    "Say",
    "SayOOC",
    "SendMessage",
    "SendOptionWindow",
    "SendPopUpMessage",
    "SetAdventureClass",
    "SetAgi",
    "SetAgiBase",
    "SetBrainTick",
    "SetCompleteFlag",
    "SetCompletedDescription",
    "SetFailureTimer",
    "SetFollowTarget",
    "SetGridID",
    "SetHP",
    "SetHeading",
    "SetIllusion",
    "SetInCombat",
    "SetInt",
    "SetIntBase",
    "SetItemCount",
    "SetLocationProximityFunction",
    "SetLootCoin",
    "SetLuaBrain",
    "SetMaxHP",
    "SetMaxHPBase",
    "SetMaxPower",
    "SetMaxPowerBase",
    "SetModelType",
    "SetMount",
    "SetMountColor",
    "SetPlayerHistory",
    "SetPlayerLevel",
    "SetPlayerProximityFunction",
    "SetPosition",
    "SetPower",
    "SetQuestCompleteAction",
    "SetQuestFeatherColor",
    "SetQuestFlags",
    "SetQuestPrereqLevel",
    "SetQuestRepeatable",
    "SetQuestRewardComment",
    "SetQuestRewardExp",
    "SetQuestRewardStatus",
    "SetQuestTimer",
    "SetQuestTimerComplete",
    "SetQuestYellow",
    "SetRequiredHistory",
    "SetRequiredQuest",
    "SetServerControlFlag",
    "SetServerVariable",
    "SetSkillMaxValue",
    "SetSkillValue",
    "SetSpeed",
    "SetSpeedMultiplier",
    "SetSpellList",
    "SetSpellSnareValue",
    "SetSpellTriggerCount",
    "SetSta",
    "SetStaBase",
    "SetStepComplete",
    "SetStepFailed",
    "SetStr",
    "SetStrBase",
    "SetSuccessTimer",
    "SetTarget",
    "SetTempVariable",
    "SetTradeskillClass",
    "SetTradeskillLevel",
    "SetVision",
    "SetWis",
    "SetWisBase",
    "Shout",
    "SpawnByLocationID",
    "SpawnGroupByID",
    "SpawnMob",
    "SpawnMove",
    "SpawnSet",
    "SpawnSetByDistance",
    "SpellDamage",
    "SpellHeal",
    "StartAutoMount",
    "StartConversation",
    "StartDialogConversation",
    "StartHeroicOpportunity",
    "Stealth",
    "SummonCosmeticPet",
    "SummonDeityPet",
    "SummonDumbFirePet",
    "SummonItem",
    "SummonPet",
    "ToggleFollow",
    "ToggleTracking",
    "UpdateQuestDescription",
    "UpdateQuestStepDescription",
    "UpdateQuestTaskGroupDescription",
    "UpdateQuestZone",
    "UseWidget",
    "Zone"
  }
}
