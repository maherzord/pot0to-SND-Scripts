--Pre Fate Settings
Food = ""                           --Leave "" Blank if you don't want to use any food. If its HQ include <hq> next to the name "Baked Eggplant <hq>"
Potion = ""                         --Leave "" Blank if you don't want to use any potions.
ShouldSummonChocobo = true          --Summon chocobo?
    ResummonChocoboTimeLeft = 3 * 60            --Resummons chocobo if there's less than this many seconds left on the timer, so it doesn't disappear on you in the middle of a fate.
    ShouldAutoBuyGysahlGreens = true    --Automatically buys a 99 stack of Gysahl Greens from the Limsa gil vendor if you're out
MountToUse = "mount roulette"       --The mount you'd like to use when flying between fates

--Fate Combat Settings
CompletionToIgnoreFate = 85         --If the fate has more than this much progress already, skip it
MinTimeLeftToIgnoreFate = 3*60      --If the fate has less than this many seconds left on the timer, skip it
CompletionToJoinBossFate = 0        --If the boss fate has less than this much progress, skip it (used to avoid soloing bosses)
    CompletionToJoinSpecialBossFates = 20   --For the Special Fates like the Serpentlord Seethes or Mascot Murder
    ClassForBossFates = ""              --If you want to use a different class for boss fates, set this to the 3 letter abbreviation
                                        --for the class. Ex: "PLD"
JoinCollectionsFates = true         --Set to false if you never want to do collections fates
RSRAoeType = "Full"               --Options: Cleave/Full/Off
RSRAutoType = "HighHP"               --Options: LowHP/HighHP/Big/Small/HighMaxHP/LowMaxHP/Nearest/Farthest.
                                    
UseBM = true                        --if you want to use the BossMod dodge/follow mode
    BMorBMR = "BMR"
    MeleeDist = 2.5                     --distance for BMRAI melee. Melee attacks (auto attacks) max distance is 2.59y, 2.60 is "target out of range"
    RangedDist = 10                     --distance for BMRAI ranged. Ranged attacks and spells max distance to be usable is 25.49y, 25.5 is "target out of range"=

IgnoreForlorns = false
    IgnoreBigForlornOnly = false

--Post Fate Settings
EnableChangeInstance = true                     --should it Change Instance when there is no Fate (only works on DT fates)
    WaitIfBonusBuff = true                          --Don't change instances if you have the Twist of Fate bonus buff
ShouldExchangeBicolorVouchers = true            --Should it exchange Bicolor Gemstone Vouchers?
    VoucherType = "Bicolor Gemstone Voucher"        -- Old Sharlayan for "Bicolor Gemstone Voucher" and Solution Nine for "Turali Bicolor Gemstone Voucher"
SelfRepair = false                              --if false, will go to Limsa mender
    RepairAmount = 20                               --the amount it needs to drop before Repairing (set it to 0 if you don't want it to repair)
    ShouldAutoBuyDarkMatter = false                  --Automatically buys a 99 stack of Grade 8 Dark Matter from the Limsa gil vendor if you're out
ShouldExtractMateria = true                           --should it Extract Materia
Retainers = false                                --should it do Retainers
ShouldGrandCompanyTurnIn = false                --should it to Turn ins at the GC (requires Deliveroo)
    InventorySlotsLeft = 5                          --how much inventory space before turning in