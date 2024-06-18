SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Varmint Rifle"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "4Consumer"
SWEP.SubCatType = "5Sporter"

SWEP.Description = "Bolt-action rifle based on the Mauser action. Accepts ubiquitous AR-15 magazines. Lightweight, easy to use and has a generous capacity, but damage is low."
SWEP.Description_Quote = "For rodents of... unassuming size."

SWEP.Trivia_Caliber = ".223 Remington"
SWEP.Trivia_Manufacturer = "All-American Firearms"
SWEP.Trivia_Year = "1999"

SWEP.Faction = TacRP.FACTION_NEUTRAL
SWEP.Credits = [[
Model: Day of Defeat: Source, edited by 8Z
Texture: 5hifty
Sound: rzen1th
Animation: Tactical Intervention
]]

SWEP.ViewModel = "models/weapons/tacint_extras/v_k98_varmint.mdl"
SWEP.WorldModel = "models/weapons/tacint_extras/w_k98_varmint.mdl"

SWEP.Slot = 2
SWEP.SlotAlt = 3

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 40,
        Damage_Min = 25,
        Range_Min = 1500,
        HipFireSpreadPenalty = 0.0125,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 28,
        Damage_Min = 20,
        Range_Min = 600,
        Range_Max = 4500,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 4,
            [HITGROUP_CHEST] = 1.25,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.8,
            [HITGROUP_RIGHTARM] = 0.8,
            [HITGROUP_LEFTLEG] = 0.6,
            [HITGROUP_RIGHTLEG] = 0.6,
            [HITGROUP_GEAR] = 0.5
        },
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 35,
        Damage_Min = 18,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 1,
            [HITGROUP_RIGHTARM] = 1,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.5
        },
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        RecoilSpreadPenalty = 0.01
    }
}

SWEP.TTTReplace = {["weapon_zm_rifle"] = 0.5, ["weapon_zm_mac10"] = 0.5}

// "ballistics"

SWEP.Damage_Max = 40
SWEP.Damage_Min = 20
SWEP.Range_Min = 800
SWEP.Range_Max = 4000
SWEP.Penetration = 7
SWEP.ArmorPenetration = 0.775

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 2.75,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.15,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.85
}

SWEP.MuzzleVelocity = 36000

// misc. shooting

SWEP.Firemode = 1

SWEP.FiremodeName = "Bolt-Action" // only used externally for firemode name distinction

SWEP.RPM = 65

SWEP.Spread = 0.0015

SWEP.HipFireSpreadPenalty = 0.02
SWEP.PeekPenaltyFraction = 0.3

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 2.5
SWEP.RecoilResetTime = 0.4
SWEP.RecoilDissipationRate = 1.25
SWEP.RecoilFirstShotMult = 1

SWEP.RecoilVisualKick = 2

SWEP.RecoilKick = 2

SWEP.RecoilSpreadPenalty = 0.0025

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.925
SWEP.ShootingSpeedMult = 0.9
SWEP.SightedSpeedMult = 0.6

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.36
SWEP.SprintToFireTime = 0.42

SWEP.Sway = 1
SWEP.ScopedSway = 0.1

SWEP.FreeAimMaxAngle = 4.5

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false
SWEP.HoldTypeNPC = "shotgun"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_AR2

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(2, -2, -6)

SWEP.BlindFireAng = Angle(0, 15, -45)
SWEP.BlindFirePos = Vector(1, -2, -3)

SWEP.BlindFireLeftAng = Angle(75, 0, 0)
SWEP.BlindFireLeftPos = Vector(8, 10, -6)

SWEP.BlindFireRightAng = Angle(-75, 0, 0)
SWEP.BlindFireRightPos = Vector(-10, 10, -5)

SWEP.BlindFireSuicideAng = Angle(0, 135, 0)
SWEP.BlindFireSuicidePos = Vector(-2, 45, -35)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(0.02, 0.35, 0)
SWEP.SightPos = Vector(-2.582, -1, -3.04)

SWEP.CorrectivePos = Vector(0.05, 0, 0.2)
SWEP.CorrectiveAng = Angle(-0.36, -0.3, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK2
SWEP.HolsterPos = Vector(5, 4, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// scope

SWEP.Scope = true
SWEP.ScopeFOV = 90 / 1.5

// reload

SWEP.ClipSize = 20
SWEP.Ammo = "smg1"

SWEP.ReloadTimeMult = 1.25
SWEP.ShootTimeMult = 0.625
SWEP.DropMagazineModel = "models/weapons/tacint/magazines/m4.mdl"
SWEP.DropMagazineImpact = "metal"

SWEP.ReloadUpInTime = 2.1
SWEP.DropMagazineTime = 1.3

// sounds

// local path = "TacRP/weapons/spr/"
local path1 = "tacint_extras/k98/"

SWEP.Sound_Shoot = "^" .. path1 .. "k98_shoot3.wav"
SWEP.Sound_Shoot_Silenced = "tacrp/weapons/m1/fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_ak47"
SWEP.EjectEffect = 2
SWEP.EjectDelay = 0.5

SWEP.DefaultSkin = 1

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "draw",
    ["fire"] = {"shoot1", "shoot2"},
    ["blind_fire"] = "shoot1"
}

// attachments

SWEP.AttachmentElements = {
    ["optic"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        },
    },
    ["scope"] = {
        BGs_VM = {
            {2, 1}
        },
    },
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium"},
        WMBone = "Bone02",
        Bone = "SPR_root",
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        InstalledElements = {"optic"},
        VMScale = 0.9,
        Pos_VM = Vector(-3.95, 0, 12.5),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, 1.25, -5.6),
        Ang_WM = Angle(0, 0, 180),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        WMBone = "Bone02",
        Bone = "SPR_root",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        VMScale = 0.75,
        WMScale = 0.75,
        Pos_VM = Vector(-2.5, 0.125, 36),
        Pos_WM = Vector(23, 1.2, -4.9),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, 0, 180),
    },
    [3] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        WMBone = "Bone02",
        Bone = "SPR_root",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        Pos_VM = Vector(-2, -0.8, 18),
        Pos_WM = Vector(6, 2, -4),
        Ang_VM = Angle(90, 0, -90),
        Ang_WM = Angle(0, 0, 90),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "perk_extendedmag", "acc_sling", "acc_duffle", "acc_bipod"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Bolt",
        Category = {"bolt_manual"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Trigger",
        Category = {"trigger_manual"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Ammo",
        Category = {"ammo_rifle"},
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

local function addsound(name, spath)
    sound.Add({
        name = name,
        channel = 16,
        volume = 1.0,
        sound = spath
    })
end

addsound("tacint_extras_k98_varmint.Clip_Out", "tacrp/weapons/m14/m14_remove_clip.wav")
addsound("tacint_extras_k98_varmint.Clip_In", "tacrp/weapons/m14/m14_insert_clip.wav")
addsound("tacint_extras_k98_varmint.Bolt_Back", path1 .. "boltback.wav")
addsound("tacint_extras_k98_varmint.bolt_forward", path1 .. "boltforward.wav")
addsound("tacint_extras_k98_varmint.safety", path1 .. "magrelease.wav")