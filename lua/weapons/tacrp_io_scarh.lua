SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "FN SCAR-H"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "2Operator"
SWEP.SubCatType = "6Precision Rifle"

SWEP.Description = "Compact, high mobility battle rifle."

SWEP.ViewModel = "models/weapons/tacint_shark/v_scarh.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_scarh.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 38,
        Damage_Min = 26,

        MoveSpeedMult = 0.8,
        ShootingSpeedMult = 0.7,
        SightedSpeedMult = 0.825,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 25,
        Damage_Min = 12,
        Range_Min = 500,
        Range_Max = 2500,
        RPM = 400,

        RecoilResetTime = 0.125,
        RecoilDissipationRate = 5,
        RecoilMaximum = 5,
        RecoilSpreadPenalty = 0.015,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 3,
            [HITGROUP_CHEST] = 1.25,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.75,
            [HITGROUP_RIGHTARM] = 0.75,
            [HITGROUP_LEFTLEG] = 0.5,
            [HITGROUP_RIGHTLEG] = 0.5,
            [HITGROUP_GEAR] = 0.5
        },

        ReloadTimeMult = 1.25,

        MoveSpeedMult = 0.9,
        ShootingSpeedMult = 0.75,
        MeleeSpeedMult = 1,
        SightedSpeedMult = 0.65,
        ReloadSpeedMult = 0.6,
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 17,
        Damage_Min = 12,
        RPM = 450,

        RecoilDissipationRate = 8,

        MoveSpeedMult = 0.8,
        ShootingSpeedMult = 0.7,
        SightedSpeedMult = 0.825,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.BattleRifle

// "ballistics"

SWEP.Damage_Max = 35
SWEP.Damage_Min = 25
SWEP.Range_Min = 800
SWEP.Range_Max = 4500
SWEP.Penetration = 20
SWEP.ArmorPenetration = 0.8

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.5,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
    [HITGROUP_GEAR] = 0.9
}

SWEP.MuzzleVelocity = 26000

// misc. shooting

SWEP.Firemodes = {
    2,
    1
}

SWEP.RPM = 550

SWEP.Spread = 0.001

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 7
SWEP.RecoilResetTime = 0.15
SWEP.RecoilDissipationRate = 8
SWEP.RecoilFirstShotMult = 0.6

SWEP.RecoilVisualKick = 2

SWEP.RecoilKick = 6

SWEP.RecoilSpreadPenalty = 0.005
SWEP.HipFireSpreadPenalty = 0.04
SWEP.PeekPenaltyFraction = 0.25

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.9
SWEP.ShootingSpeedMult = 0.825
SWEP.SightedSpeedMult = 0.65

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.37
SWEP.SprintToFireTime = 0.4

SWEP.Sway = 1.25
SWEP.ScopedSway = 0.1

SWEP.FreeAimMaxAngle = 5

// hold types

SWEP.HoldType = "smg"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(3, -2, -5)

SWEP.SightAng = Angle(2.45, 0.3, 0)
SWEP.SightPos = Vector(-2.55, -5, -4.75)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.CorrectivePos = Vector(-0.675, 0, 0.15)
SWEP.CorrectiveAng = Angle(-2.5, 2.5, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 20
SWEP.Ammo = "ar2"

SWEP.ReloadTimeMult = 1
SWEP.DropMagazineModel = "models/weapons/tacint_extras/magazines/scarh.mdl"
SWEP.DropMagazineImpact = "plastic"

SWEP.ReloadUpInTime = 1.1
SWEP.DropMagazineTime = 0.3

// sounds

local path = "tacrp/weapons/dsa58/dsa58_"
local path1 = "tacint_shark/scarh/"

SWEP.Sound_Shoot = "^" .. path1 .. "scarh-1.wav"
SWEP.Sound_Shoot_Silenced = "^" .. path .. "fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_g3"
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
    ["fire_iron"] = "dryfire",
    ["fire1"] = "fire1_M",
    ["fire2"] = "fire2_M",
    ["fire3"] = "fire3_M",
    ["fire4"] = "fire4_M",
    ["fire5"] = "fire5_M",
    ["melee"] = {"melee1", "melee2"}
}

// attachments

SWEP.AttachmentElements = {
    ["sights"] = {
        BGs_VM = {
            {4, 1}
        },
        BGs_WM = {
            {4, 1}
        }
    },
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium", "optic_sniper"},
        Bone = "ValveBiped.dsa58_rootbone",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        InstalledElements = {"sights"},
        VMScale = 0.9,
        Pos_VM = Vector(-5.9, 0.28, 4),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, 2.5, 1.3),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "ValveBiped.dsa58_rootbone",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        Pos_VM = Vector(-3.6, 0.3, 24),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, 22.5, -0.9),
        Ang_WM = Angle(0, -90, 0),
    },
    [3] = {
        PrintName = "Tactical",
        Category = "tactical",
        Bone = "ValveBiped.dsa58_rootbone",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        VMScale = 1.1,
        Pos_VM = Vector(-3.6, -0.75, 14),
        Ang_VM = Angle(90, 0, -90),
        Pos_WM = Vector(1.25, 11.5, -0.75),
        Ang_WM = Angle(0, -90, -60),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_sling", "acc_duffle", "acc_extmag_rifle2", "acc_bipod"},
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

addsound("tacint_scar.insert_clip", path1 .. "scarh_clipin.wav")
addsound("tacint_scar.insert_clip-mid", path1 .. "scarh_clipin.wav")
addsound("tacint_scar.remove_clip", path1 .. "scarh_clipout.wav")
addsound("tacint_scar.Handle_FoldDown", path .. "handle_folddown.wav")
addsound("tacint_scar.bolt_back", path1 .. "scarh_boltpull.wav")
addsound("tacint_scar.bolt_release", path .. "bolt_shut.wav")