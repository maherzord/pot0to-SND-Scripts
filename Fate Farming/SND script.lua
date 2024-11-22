configuration_profile = ""
-- Maher and Xu options
if configuration_profile == "" then
    --Pre Fate Settings
  Food = ""                           --Leave "" Blank if you don't want to use any food. If its HQ include <hq> next to the name "Baked Eggplant <hq>"
  Potion = ""                         --Leave "" Blank if you don't want to use any potions.
  ShouldSummonChocobo = true          --Summon chocobo?
      ResummonChocoboTimeLeft = 3 * 60            --Resummons chocobo if there's less than this many seconds left on the timer, so it doesn't disappear on you in the middle of a fate.
      ShouldAutoBuyGysahlGreens = true    --Automatically buys a 99 stack of Gysahl Greens from the Limsa gil vendor if you're out
  MountToUse = "mount roulette"       --The mount you'd like to use when flying between fates

--Fate Combat Settings
  CompletionToIgnoreFate = 80         --If the fate has more than this much progress already, skip it
  MinTimeLeftToIgnoreFate = 3*60      --If the fate has less than this many seconds left on the timer, skip it
  CompletionToJoinBossFate = 0        --If the boss fate has less than this much progress, skip it (used to avoid soloing bosses)
      CompletionToJoinSpecialBossFates = 20   --For the Special Fates like the Serpentlord Seethes or Mascot Murder
      ClassForBossFates = ""              --If you want to use a different class for boss fates, set this to the 3 letter abbreviation
                                        --for the class. Ex: "PLD"
  JoinCollectionsFates = true         --Set to false if you never want to do collections fates
  RSRAoeType = "Full"               --Options: Cleave/Full/Off
  RSRAutoType = "HighHP"               --Options: LowHP/HighHP/Big/Small/HighMaxHP/LowMaxHP/Nearest/Farthest.

  RotationPlugin = "RSR"              --Options: RSR/BMR/VBM/Wrath/None
      RotationSingleTargetPreset = ""     --For BMR/VBM only. Preset name for aoe mode.
      RotationAoePreset = ""              --For BMR/VBM only. Prset name for single target mode (for forlorns).
      MeleeDist = 2.5                     --Distance for melee. Melee attacks (auto attacks) max distance is 2.59y, 2.60 is "target out of range"
      RangedDist = 20                     --Distance for ranged. Ranged attacks and spells max distance to be usable is 25.49y, 25.5 is "target out of range"=

  IgnoreForlorns = false
      IgnoreBigForlornOnly = false

--Post Fate Settings
  EnableChangeInstance = true                     --should it Change Instance when there is no Fate (only works on DT fates)
      WaitIfBonusBuff = true                          --Don't change instances if you have the Twist of Fate bonus buff
  ShouldExchangeBicolorVouchers = true            --Should it exchange Bicolor Gemstone Vouchers?
      VoucherType = "Turali Bicolor Gemstone Voucher"        -- Old Sharlayan for "Bicolor Gemstone Voucher" and Solution Nine for "Turali Bicolor Gemstone Voucher"
  SelfRepair = false                              --if false, will go to Limsa mender
      RepairAmount = 20                               --the amount it needs to drop before Repairing (set it to 0 if you don't want it to repair)
      ShouldAutoBuyDarkMatter = true                  --Automatically buys a 99 stack of Grade 8 Dark Matter from the Limsa gil vendor if you're out
  ShouldExtractMateria = true                           --should it Extract Materia
  Retainers = true                                --should it do Retainers
  ShouldGrandCompanyTurnIn = false                --should it to Turn ins at the GC (requires Deliveroo)
      InventorySlotsLeft = 5                          --how much inventory space before turning in

  Echo = "All"                                   --Options: All/Gems/None

  CompanionScriptMode = false                      --Set to true if you are using the fate script with a companion script (such as the Atma Farmer)
end
 

function executeScriptFromURL(url)
    -- Command to fetch the Lua script using curl
    local command = string.format('curl -s "%s"', url)

    -- Open a pipe to read the output of the command
    local pipe = io.popen(command)

    -- Read the output of the command (the Lua script)
    local scriptContent = pipe:read("*a")
    pipe:close()

    -- Load and execute the Lua script
    local loadedFunction, errorMessage = load(scriptContent)
    if loadedFunction then
        loadedFunction()  -- Execute the loaded function
        yield("/echo Configuration Profile loaded and executed successfully.")
    else
        yield("/echo Error loading configuration profile:", errorMessage)
    end
end

-- URL of the Lua script to fetch and execute
local scriptURL = "https://raw.githubusercontent.com/maherzord/pot0to-SND-Scripts/refs/heads/main/Fate%20Farming/Fate%20Farming.lua"
--local scriptURL = "https://example.com/script.lua"

-- Execute the Lua script fetched from the URL
executeScriptFromURL(scriptURL)
