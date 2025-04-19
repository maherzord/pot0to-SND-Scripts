--Pre Fate Settings
Food                                = ""            --Leave "" Blank if you don't want to use any food. If its HQ include <hq> next to the name "Baked Eggplant <hq>"
Potion                              = ""            --Leave "" Blank if you don't want to use any potions.
ShouldSummonChocobo                 = true          --Summon chocobo?
    ResummonChocoboTimeLeft         = 3 * 60        --Resummons chocobo if there's less than this many seconds left on the timer, so it doesn't disappear on you in the middle of a fate.
    ChocoboStance                   = "Free"      --Options: Follow/Free/Defender/Healer/Attacker
    ShouldAutoBuyGysahlGreens       = true          --Automatically buys a 99 stack of Gysahl Greens from the Limsa gil vendor if you're out
MountToUse                          = "mount roulette"       --The mount you'd like to use when flying between fates
FatePriority                        = {"DistanceTeleport", "Progress", "DistanceTeleport", "Bonus", "TimeLeft", "Distance"}

--Fate Combat Settings
CompletionToIgnoreFate              = 80            --If the fate has more than this much progress already, skip it
MinTimeLeftToIgnoreFate             = 3*60          --If the fate has less than this many seconds left on the timer, skip it
CompletionToJoinBossFate            = 0             --If the boss fate has less than this much progress, skip it (used to avoid soloing bosses)
    CompletionToJoinSpecialBossFates = 20           --For the Special Fates like the Serpentlord Seethes or Mascot Murder
    ClassForBossFates               = ""            --If you want to use a different class for boss fates, set this to the 3 letter abbreviation
                                                        --for the class. Ex: "PLD"
JoinCollectionsFates                = true          --Set to false if you never want to do collections fates
BonusFatesOnly                      = false         --If true, will only do bonus fates and ignore everything else

MeleeDist                           = 2.5           --Distance for melee. Melee attacks (auto attacks) max distance is 2.59y, 2.60 is "target out of range"
RangedDist                          = 20            --Distance for ranged. Ranged attacks and spells max distance to be usable is 25.49y, 25.5 is "target out of range"=

RotationPlugin                      = "RSR"         --Options: RSR/BMR/VBM/Wrath/None
    RSRAoeType                      = "Full"        --Options: Cleave/Full/Off

    -- For BMR/VBM/Wrath
    RotationSingleTargetPreset      = ""            --Preset name with single target strategies (for forlorns). TURN OFF AUTOMATIC TARGETING FOR THIS PRESET
    RotationAoePreset               = ""            --Preset with AOE + Buff strategies.
    RotationHoldBuffPreset          = ""            --Preset to hold 2min burst when progress gets to seleted %
    PercentageToHoldBuff            = 65            --Ideally you'll want to make full use of your buffs, higher than 70% will still waste a few seconds if progress is too fast.
DodgingPlugin                       = "BMR"         --Options: BMR/VBM/None. If your RotationPlugin is BMR/VBM, then this will be overriden

IgnoreForlorns                      = false
    IgnoreBigForlornOnly            = false

--Post Fate Settings
MinWait                             = 3             --Min number of seconds it should wait until mounting up for next fate.
MaxWait                             = 7            --Max number of seconds it should wait until mounting up for next fate.
                                                        --Actual wait time will be a randomly generated number between MinWait and MaxWait.
DownTimeWaitAtNearestAetheryte      = false         --When waiting for fates to pop, should you fly to the nearest Aetheryte and wait there?
EnableChangeInstance                = true          --should it Change Instance when there is no Fate (only works on DT fates)
    WaitIfBonusBuff                 = false          --Don't change instances if you have the Twist of Fate bonus buff
    NumberOfInstances               = 2
ShouldExchangeBicolorGemstones      = true          --Should it exchange Bicolor Gemstone Vouchers?
    ItemToPurchase                  = "Bicolor Gemstone Voucher"        -- Old Sharlayan for "Bicolor Gemstone Voucher" and Solution Nine for "Turali Bicolor Gemstone Voucher"
SelfRepair                          = true         --if false, will go to Limsa mender
    RepairAmount                    = 80            --the amount it needs to drop before Repairing (set it to 0 if you don't want it to repair)
    ShouldAutoBuyDarkMatter         = true          --Automatically buys a 99 stack of Grade 8 Dark Matter from the Limsa gil vendor if you're out
ShouldExtractMateria                = true          --should it Extract Materia
Retainers                           = false          --should it do Retainers
ShouldGrandCompanyTurnIn            = false         --should it do Turn ins at the GC (requires Deliveroo)
    InventorySlotsLeft              = 5             --how much inventory space before turning in

Echo                                = "All"         --Options: All/Gems/None

CompanionScriptMode                 = false         --Set to true if you are using the fate script with a companion script (such as the Atma Farmer)
