SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "AS Val"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "2Operator"
SWEP.SubCatType = "4Assault Rifle"

SWEP.Description = "Integrally-suppressed rifle with high damage output and precision, but performs poorly over long bursts."

SWEP.Trivia_Caliber = "9x39mm"
SWEP.Trivia_Manufacturer = "Tula Arms Plant"
SWEP.Trivia_Year = "1987"

SWEP.Faction = TacRP.FACTION_COALITION
SWEP.Credits = [[
Model & Texture: S.T.A.L.K.E.R.
Sound: S.T.A.L.K.E.R. & Vunsunta
Animation: Tactical Intervention
]]


SWEP.ViewModel = "models/weapons/tacint_extras/v_val.mdl"
SWEP.WorldModel = "models/weapons/tacint_extras/w_val.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 15,
        Damage_Min = 12,
        Range_Min = 800,
        Range_Max = 4000,
        RPM = 650,

        RecoilSpreadPenalty = 0.005,
        HipFireSpreadPenalty = 0.035,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 4,
            [HITGROUP_CHEST] = 1.5,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.8,
            [HITGROUP_RIGHTARM] = 0.8,
            [HITGROUP_LEFTLEG] = 0.6,
            [HITGROUP_RIGHTLEG] = 0.6,
            [HITGROUP_GEAR] = 0.6
        },
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 10,
        Damage_Min = 7,
        Range_Min = 800,
        Range_Max = 4000,
        RPM = 800,
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.AssaultRifle

// "ballistics"

SWEP.Damage_Max = 22
SWEP.Damage_Min = 16
SWEP.Range_Min = 900
SWEP.Range_Max = 2200
SWEP.Penetration = 9 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.925

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 4,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.25,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.85,
    [HITGROUP_RIGHTLEG] = 0.85,
    [HITGROUP_GEAR] = 0.9
}

SWEP.MuzzleVelocity = 14500

// misc. shooting

SWEP.Firemodes = {2, 1}
SWEP.RPM = 900

SWEP.Spread = 0.001

SWEP.ShootTimeMult = 0.5

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 5
SWEP.RecoilResetTime = 0.01
SWEP.RecoilDissipationRate = 28
SWEP.RecoilFirstShotMult = 0.75

SWEP.RecoilVisualKick = 0.75
SWEP.RecoilKick = 4.5
SWEP.RecoilStability = 0.45
SWEP.RecoilAltMultiplier = 300

SWEP.RecoilSpreadPenalty = 0.0035
SWEP.HipFireSpreadPenalty = 0.027

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.925
SWEP.ShootingSpeedMult = 0.75
SWEP.SightedSpeedMult = 0.55

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.39
SWEP.SprintToFireTime = 0.37

SWEP.Sway = 1.25
SWEP.ScopedSway = 0.175

SWEP.FreeAimMaxAngle = 5

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(3, -2, -5)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(0.05, 0, 0)
SWEP.SightPos = Vector(-4.66, -7.5, -2.7)

SWEP.CorrectivePos = Vector(0, 0, -0.05)
SWEP.CorrectiveAng = Angle(0.75, 0.7, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, -2, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// scope

SWEP.Scope = true

SWEP.ClipSize = 20
SWEP.Ammo = "smg1"

SWEP.ReloadTimeMult = 1
SWEP.DropMagazineModel = "models/weapons/tacint_extras/magazines/vss.mdl"
SWEP.DropMagazineImpact = "plastic"

SWEP.ReloadUpInTime = 1.65
SWEP.DropMagazineTime = 0.65

// sounds

local path = "tacint_extras/vss/"

SWEP.Sound_Shoot = "^" .. path .. "fire.wav"
SWEP.Sound_Shoot_Silenced = "^" .. path .. "fire.wav"

SWEP.Vol_Shoot = 80
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_suppressed"
SWEP.EjectEffect = 2
SWEP.Silencer = true

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "unholster",
    ["fire1"] = "fire1_M",
    ["fire2"] = "fire2_M",
    ["fire3"] = "fire3_M",
    ["fire4"] = "fire4_M",
    ["fire5"] = "fire5_M",
    ["melee"] = {"melee1", "melee2"}
}

SWEP.DeployTimeMult = 2.2
SWEP.UnholsterTimeMult = 1 / 2.2

// attachments

SWEP.AttachmentElements = {
    ["tactical"] = {
        BGs_VM = {
            {2, 1}
        },
        BGs_WM = {
            {2, 1}
        },
    },
    ["foldstock"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        },
    },
    ["pso1"] = {
        BGs_VM = {
            {2, 2}
        },
        BGs_WM = {
            {2, 2}
        },
    },
    ["akmount"] = {
        BGs_VM = {
            {2, 0}
        },
        BGs_WM = {
            {2, 0}
        },
        AttPosMods = {
            [1] = {
                Pos_VM = Vector(-5.5, 0.5, 2.5),
                Pos_WM = Vector(-0.4, 2, 0.5),
            }
        },
        SortOrder = 2,
    },
}


SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_pso1", "optic_cqb", "optic_medium", "optic_sniper", "optic_ak2"},
        Bone = "ValveBiped.AK47_rootbone",
        WMBone = "Box01",
        InstalledElements = {"tactical"},
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        VMScale = 0.75,
        Pos_VM = Vector(-5.25, 0.15, 4),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, 3, 0.2),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        Bone = "ValveBiped.AK47_rootbone",
        WMBone = "Box01",
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
        Pos_VM = Vector(-3.25, -0.1, 19),
        Pos_WM = Vector(0, 19, -2),
        Ang_VM = Angle(90, 0, -90),
        Ang_WM = Angle(0, -90, 180),
    },
    [3] = {
        PrintName = "Accessory",
        Category = {"acc_foldstock", "acc", "acc_sling", "acc_duffle", "perk_extendedmag"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Trigger",
        Category = {"trigger_auto"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Ammo",
        Category = {"ammo_rifle"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
}