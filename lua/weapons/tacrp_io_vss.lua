SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "VSS Vintorez"
SWEP.AbbrevName = "Vintorez"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "2Operator"
SWEP.SubCatType = "6Precision Rifle"

SWEP.Description = "Integrally-suppressed marksman rifle with high fire rate and low recoil, but performs poorly over long bursts.\nEquipped with a 6x scope by default."

SWEP.Trivia_Caliber = "9x39mm"
SWEP.Trivia_Manufacturer = "Tula Arms Plant"
SWEP.Trivia_Year = "1987"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = [[
Model: Ettubrutesbro, Millenia & Twinke Masta
Texture: Millenia
Sound: S.T.A.L.K.E.R. & Vunsunta
Animation: Tactical Intervention
]]


SWEP.ViewModel = "models/weapons/tacint_extras/v_vss.mdl"
SWEP.WorldModel = "models/weapons/tacint_extras/w_vss.mdl"

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
        Damage_Max = 13,
        Damage_Min = 8,
        Range_Min = 1000,
        Range_Max = 5000,
        RPM = 600,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        RecoilSpreadPenalty = 0.004
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.AssaultRifle

// "ballistics"

SWEP.Damage_Max = 24
SWEP.Damage_Min = 20
SWEP.Range_Min = 1000
SWEP.Range_Max = 2500
SWEP.Penetration = 9 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.925

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 4.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.25,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.85,
    [HITGROUP_RIGHTLEG] = 0.85,
    [HITGROUP_GEAR] = 0.9
}

SWEP.MuzzleVelocity = 16000

// misc. shooting

SWEP.Firemodes = {
    1,
    2
}

SWEP.RPM = 700

SWEP.Spread = 0.0005

SWEP.ShootTimeMult = 0.5

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 5
SWEP.RecoilResetTime = 0.01
SWEP.RecoilDissipationRate = 28
SWEP.RecoilFirstShotMult = 0.65

SWEP.RecoilVisualKick = 0.5
SWEP.RecoilKick = 3
SWEP.RecoilStability = 0.5
SWEP.RecoilAltMultiplier = 400

SWEP.RecoilSpreadPenalty = 0.0048
SWEP.HipFireSpreadPenalty = 0.03

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.925
SWEP.ShootingSpeedMult = 0.75
SWEP.SightedSpeedMult = 0.55

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.44
SWEP.SprintToFireTime = 0.4

SWEP.Sway = 1.3
SWEP.ScopedSway = 0.1

SWEP.FreeAimMaxAngle = 5.5

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
SWEP.ScopeOverlay = Material("tacrp/scopes/pso1.png", "mips smooth") // Material("path/to/overlay")
SWEP.ScopeFOV = 90 / 6
SWEP.ScopeLevels = 1
SWEP.ScopeHideWeapon = true
SWEP.ScopeOverlaySize = 0.9

SWEP.ClipSize = 20
SWEP.Ammo = "smg1"

SWEP.ReloadTimeMult = 1
SWEP.DropMagazineModel = "models/weapons/tacint_extras/magazines/vss.mdl"
SWEP.DropMagazineImpact = "plastic"

SWEP.ReloadUpInTime = 1.65
SWEP.DropMagazineTime = 0.65

// sounds

local path = "tacint_extras/vss/"
local path1 = "tacrp_extras/ak47/"

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

SWEP.DeployTimeMult = 2.25

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
    ["irons"] = {
        BGs_VM = {
            {2, 2}
        },
        BGs_WM = {
            {2, 2}
        },
    },
    ["akmount"] = {
        BGs_VM = {
            {2, 2}
        },
        BGs_WM = {
            {2, 2}
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
        Category = {"ironsights", "optic_cqb", "optic_medium", "optic_sniper", "optic_ak2"},
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
        Category = {"acc", "acc_sling", "acc_duffle", "perk_extendedmag", "acc_bipod"},
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

local function addsound(name, spath)
    sound.Add({
        name = name,
        channel = 16,
        volume = 1.0,
        sound = spath
    })
end

addsound("tacint_extras_vss.remove_clip", path .. "clipin1.wav")
addsound("tacint_extras_vss.insert_clip", path .. "clipin2.wav")
addsound("tacint_extras_vss.boltaction", path1 .. "bolt.mp3")
addsound("tacint_extras_vss.Buttstock_Back", path .. "buttstock_back.wav")