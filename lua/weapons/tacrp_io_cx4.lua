SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Beretta CX4 Storm"
SWEP.AbbrevName = "CX4 Storm"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "4Consumer"
SWEP.SubCatType = "5Sporter"

SWEP.Description = "Semi-automatic pistol carbine with good range.\nMediocre armor penetration, but the large frame makes the weapon quite stable."
SWEP.Description_Quote = "As famously seen in a certain PMC leader's arsenal."

SWEP.Trivia_Caliber = "9x19mm"
SWEP.Trivia_Manufacturer = "Pietro Beretta"
SWEP.Trivia_Year = "2003"

SWEP.Faction = TacRP.FACTION_NEUTRAL
SWEP.Credits = [[
Assets: Counter Strike: Online 2
Animation: Tactical Intervention
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_cx4.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_cx4.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 25,
        Damage_Min = 15,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 12,
        Damage_Min = 6,

        RPM = 700,

        RecoilSpreadPenalty = 0.0012,
        HipFireSpreadPenalty = 0.03,
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 9,
        Damage_Min = 5,
        RPM = 500,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        RecoilSpreadPenalty = 0.002
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.SMG

// "ballistics"

SWEP.Damage_Max = 18
SWEP.Damage_Min = 9
SWEP.Range_Min = 600
SWEP.Range_Max = 3200
SWEP.Penetration = 5
SWEP.ArmorPenetration = 0.5

SWEP.MuzzleVelocity = 15500

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.9
}

// misc. shooting

SWEP.Firemode = 1
SWEP.RPM = 550
SWEP.RPMMultSemi = 0.6

SWEP.Spread = 0.0025
SWEP.RecoilSpreadPenalty = 0.0012
SWEP.HipFireSpreadPenalty = 0.02

SWEP.ShootTimeMult = 0.65

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 8
SWEP.RecoilResetTime = 0.175 // time after you stop shooting for recoil to start dissipating
SWEP.RecoilDissipationRate = 12
SWEP.RecoilFirstShotMult = 0.75 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 1
SWEP.RecoilKick = 2
SWEP.RecoilStability = 0.25

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.925
SWEP.ShootingSpeedMult = 0.9
SWEP.SightedSpeedMult = 0.7

SWEP.ReloadSpeedMult = 0.6

SWEP.AimDownSightsTime = 0.32
SWEP.SprintToFireTime = 0.35

SWEP.Sway = 0.75
SWEP.ScopedSway = 0.125

SWEP.FreeAimMaxAngle = 4.75

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = "pistol"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_PISTOL

SWEP.PassiveAng = Angle(-2.5, -1, 0)
SWEP.PassivePos = Vector(0, -4, -5.5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(3, -2, -5)

SWEP.BlindFireSuicideAng = Angle(-135, 5, 45)
SWEP.BlindFireSuicidePos = Vector(31, 25, -5)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(0.19, 0, 0.5)
SWEP.SightPos = Vector(-3.66, -6.5, -4.325)

SWEP.CorrectiveAng = Angle(-0.2, 0, 0.5)
SWEP.CorrectivePos = Vector(-0.075, 0, 0.15)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(90, 0, 0)

// reload

SWEP.ClipSize = 20
SWEP.Ammo = "pistol"

SWEP.ReloadTimeMult = 0.9
SWEP.DropMagazineModel = "models/weapons/tacint_extras/magazines/cx4.mdl"
SWEP.DropMagazineImpact = "pistol"

SWEP.ReloadUpInTime = 1.05
SWEP.DropMagazineTime = 0.35

// sounds

local path = "tacrp/weapons/uzi/uzi_"
local path1 = "tacint_shark/mx4/"

SWEP.Sound_Shoot = "^" .. path1 .. "mx4-1.wav"
SWEP.Sound_Shoot_Silenced = path .. "fire_silenced-1.wav"

SWEP.Vol_Shoot = 115
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot
SWEP.Pitch_Shoot = 97.5

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_smg"

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "unholster",
    ["fire_iron"] = "dryfire",
    ["fire1"] = "fire1_M",
    ["fire2"] = "fire2_M",
    ["fire3"] = "fire3_M",
    ["fire4"] = "fire4_M",
    ["fire5"] = "fire5_M",
    ["melee"] = {"melee1", "melee2"}
}

SWEP.DeployTimeMult = 2

// attachments

SWEP.AttachmentElements = {
    ["tactical"] = {
        BGs_VM = {
            {2, 1}
        },
        BGs_WM = {
            {1, 1}
        }
    },
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium"},
        Bone = "ValveBiped.uzi_rootbone",
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        InstalledElements = {"optic"},
        VMScale = 0.95,
        Pos_VM = Vector(-5.25, -0.275, 5),
        Pos_WM = Vector(8, 1.5, -5.75),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, -3.5, 180),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "ValveBiped.uzi_rootbone",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        VMScale = 0.75,
        WMScale = 0.7,
        Pos_VM = Vector(-3.75, -0.2, 24),
        Pos_WM = Vector(26, 2.55, -4.35),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, -3.5, 180),
    },

    [3] = {
        PrintName = "Tactical",
        Category = {"tactical"},
        Bone = "ValveBiped.uzi_rootbone",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        Pos_VM = Vector(-3.74, -1.1, 11),
        Pos_WM = Vector(14, 2.8, -4),
        Ang_VM = Angle(91, 0, -88),
        Ang_WM = Angle(0, -3.5, 90),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_extmag_smg", "acc_sling"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Trigger",
        Category = {"trigger_semi"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Ammo",
        Category = {"ammo_pistol"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [8] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
}