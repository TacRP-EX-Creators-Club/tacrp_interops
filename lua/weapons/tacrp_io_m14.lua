SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "M14 SOPMOD"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "2Operator"
SWEP.SubCatType = "6Precision Rifle"

SWEP.Description = "Modernized short barrel rifle with improved mobility and fast automatic fire but punishing recoil.\nEquipped with a 6x scope by default."

// https://gamebanana.com/mods/211865
SWEP.ViewModel = "models/weapons/tacint_extras/v_m14.mdl"
SWEP.WorldModel = "models/weapons/tacint_extras/w_m14.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 30,
        Damage_Min = 40,

        Range_Min = 1500,
        Range_Max = 4000,

        MoveSpeedMult = 0.8,
        ShootingSpeedMult = 0.6,
        SightedSpeedMult = 0.75,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
    [TacRP.BALANCE_TTT] = {

        Description = "Modernized short barrel rifle with fast fire rate and punishing recoil.\nEquipped with a 6x scope by default.",

        Damage_Max = 18,
        Damage_Min = 30,
        Range_Min = 1500,
        Range_Max = 2500,
        RPM = 420,

        RecoilResetTime = 0.15,
        RecoilDissipationRate = 4,
        RecoilMaximum = 5,
        RecoilSpreadPenalty = 0.02,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 4,
            [HITGROUP_CHEST] = 1.25,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.75,
            [HITGROUP_RIGHTARM] = 0.75,
            [HITGROUP_LEFTLEG] = 0.5,
            [HITGROUP_RIGHTLEG] = 0.5,
            [HITGROUP_GEAR] = 0.5
        },

        ReloadTimeMult = 1.25,

        MoveSpeedMult = 0.85,
        ShootingSpeedMult = 0.75,
        MeleeSpeedMult = 1,
        SightedSpeedMult = 0.5,
        ReloadSpeedMult = 0.5,
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.MarksmanRifle

// "ballistics"

SWEP.Damage_Max = 42
SWEP.Damage_Min = 30
SWEP.Range_Min = 1200 // distance for which to maintain maximum damage
SWEP.Range_Max = 5000 // distance at which we drop to minimum damage
SWEP.Penetration = 15 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.85

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3,
    [HITGROUP_CHEST] = 1.5,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.75
}

SWEP.MuzzleVelocity = 27500

// misc. shooting

SWEP.Firemodes = {1, 2}

SWEP.RPM = 700

SWEP.Spread = 0.0005

SWEP.ShootTimeMult = 0.5

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 8
SWEP.RecoilResetTime = 0.2
SWEP.RecoilDissipationRate = 8
SWEP.RecoilFirstShotMult = 0.5

SWEP.RecoilVisualKick = 3

SWEP.RecoilKick = 4

SWEP.RecoilSpreadPenalty = 0.006
SWEP.HipFireSpreadPenalty = 0.075
SWEP.PeekPenaltyFraction = 0.1


SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.85
SWEP.ShootingSpeedMult = 0.75
SWEP.SightedSpeedMult = 0.5

SWEP.ReloadSpeedMult = 0.4

SWEP.AimDownSightsTime = 0.37
SWEP.SprintToFireTime = 0.45

SWEP.Sway = 2
SWEP.ScopedSway = 0.1

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
SWEP.SprintPos = Vector(7, -3, -2)

SWEP.SprintMidPoint = {
    Pos = Vector(4, 5, 2),
    Ang = Angle(0, -2, -45)
}

SWEP.SightAng = Angle(0, -0.05, 0)
SWEP.SightPos = Vector(-3.8, -7.5, -2.63)

SWEP.CorrectivePos = Vector(0.025, -7.5, 0.1)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// scope

SWEP.Scope = true
SWEP.ScopeOverlay = Material("tacrp/scopes/l96.png", "mips smooth") // Material("path/to/overlay")
SWEP.ScopeFOV = 90 / 6
SWEP.ScopeLevels = 1 // 2 = like CS:S
SWEP.ScopeHideWeapon = true

// reload

SWEP.ClipSize = 20
SWEP.Ammo = "ar2"

SWEP.ReloadTimeMult = 1
SWEP.DropMagazineModel = "models/weapons/tacint/magazines/m14.mdl"
SWEP.DropMagazineImpact = "metal"

// sounds

local path = "TacRP/weapons/m14/m14_"
local path1 = "tacint_extras/m14/"

SWEP.Sound_Shoot = "^" .. path1 .. "fire-1.wav"
SWEP.Sound_Shoot_Silenced = "TacRP/weapons/g36k/g36k_fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_ak47"
SWEP.EjectEffect = 2

// anims

// VM:
// idle
// fire
// fire1, fire2...
// dryfire
// melee
// reload
// midreload
// prime_grenade
// throw_grenade
// throw_grenade_underhand
// deploy
// blind_idle
// blind_fire
// blind_fire1, blind_fire2...
// blind_dryfire

// WM:
// attack1
SWEP.AnimationTranslationTable = {
    ["fire_iron"] = "shoot2",
    ["deploy"] = "draw",
    ["fire"] = {"shoot1", "shoot2"},
    ["blind_fire"] = "blind_shoot1"
}

// attachments

SWEP.AttachmentElements = {
    ["sights"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        }
    },
    ["muzzle"] = {
        BGs_VM = {
            {2, 1}
        },
        BGs_WM = {
            {2, 1}
        }
    },
}


SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"ironsights_sniper", "optic_cqb", "optic_medium", "optic_sniper"},
        Bone = "ValveBiped.m14_rootbone",
        InstalledElements = {"sights"},
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        VMScale = 1,
        Pos_VM = Vector(-4.75, 0.2, 12),
        Pos_WM = Vector(14.5, 0.6, -9.8),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(-22.5, 5, 180),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = {"comp_m14", "silencer"},
        Bone = "ValveBiped.m14_rootbone",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        Pos_VM = Vector(-3.3, 0.2, 26.5),
        Pos_WM = Vector(27.5, -0.5, -13.6),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(-22.5, 5, 180),
        VMScale = 0.75,
        WMScale = 0.75,
    },
    [3] = {
        PrintName = "Tactical",
        Category = "tactical",
        Bone = "ValveBiped.m14_rootbone",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        Pos_VM = Vector(-3.6, -0.5, 17),
        Pos_WM = Vector(20, 1, -11),
        Ang_VM = Angle(90, 0, -70),
        Ang_WM = Angle(-22.5, 5, 110),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_extmag_rifle2", "acc_sling", "acc_duffle", "acc_bipod"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [8] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Trigger",
        Category = {"trigger_auto"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Ammo",
        Category = {"ammo_sniper"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    }
}

local function addsound(name, spath)
    sound.Add({
        name = name,
        channel = 16,
        volume = 1.0,
        sound = spath
    })
end

addsound("tacint_extras_m14.remove_clip", path1 .. "clipout2.mp3")
addsound("tacint_extras_m14.insert_clip", path1 .. "clipin.mp3")
addsound("tacint_extras_m14.insert_clip-mid", path .. "insert_clip-mid.wav")
addsound("tacint_extras_m14.bolt_back", path1 .. "boltback.mp3")
addsound("tacint_extras_m14.bolt_release", path1 .. "boltrelease.mp3")
addsound("tacint_extras_m14.safety", path .. "safety.wav")