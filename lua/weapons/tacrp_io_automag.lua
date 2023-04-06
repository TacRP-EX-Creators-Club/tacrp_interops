SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "AMT Automag"
SWEP.Category = "Tactical RP" // "Tactical RP (Arctic)"

SWEP.SubCatTier = "3Quality"
SWEP.SubCatType = "1Sidearm"

SWEP.Description = "Highly accurate magnum pistol. Great handling due to its size, but can only mount pistol optics."

// https://gamebanana.com/mods/207420
SWEP.ViewModel = "models/weapons/tacint_extras/v_automag.mdl"
SWEP.WorldModel = "models/weapons/tacint_extras/w_automag.mdl"

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        MoveSpeedMult = 1,
        ShootingSpeedMult = 0.8,
        SightedSpeedMult = 0.9,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 35,
        Damage_Min = 12,
        Range_Min = 150,
        Range_Max = 2000,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2.5,
            [HITGROUP_CHEST] = 1.25,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.9,
            [HITGROUP_RIGHTARM] = 0.9,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.75
        },

        RecoilSpreadPenalty = 0.015,

        ReloadTimeMult = 1.5 * 1.25,

        MoveSpeedMult = 1,
        ShootingSpeedMult = 0.75,
        MeleeSpeedMult = 1,
        SightedSpeedMult = 0.75,
        ReloadSpeedMult = 0.8,
    },
}

SWEP.ArcadeStats = {

}

// "ballistics"

SWEP.Damage_Max = 55
SWEP.Damage_Min = 30
SWEP.Range_Min = 800 // distance for which to maintain maximum damage
SWEP.Range_Max = 3000 // distance at which we drop to minimum damage
SWEP.Penetration = 3 // units of metal this weapon can penetrate

SWEP.MuzzleVelocity = 14000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 2.5,
    [HITGROUP_CHEST] = 1.25,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.75
}

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 180

SWEP.Spread = 0.002

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 4
SWEP.RecoilResetTime = 0.3
SWEP.RecoilDissipationRate = 4
SWEP.RecoilFirstShotMult = 0.65

SWEP.RecoilVisualKick = 2.5
SWEP.RecoilKick = 10

SWEP.RecoilSpreadPenalty = 0.01
SWEP.HipFireSpreadPenalty = 0.035
SWEP.PeekPenaltyFraction = 0.15

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.9
SWEP.ShootingSpeedMult = 0.4
SWEP.SightedSpeedMult = 0.5

SWEP.ReloadSpeedMult = 0.75

SWEP.AimDownSightsTime = 0.29
SWEP.SprintToFireTime = 0.25

SWEP.Sway = 1.25
SWEP.ScopedSway = 0.55

// hold types

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_PISTOL

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(0, -2, -5)

SWEP.BlindFireSuicideAng = Angle(-130, 0, 45)
SWEP.BlindFireSuicidePos = Vector(25, 15, -6)

SWEP.SprintAng = Angle(0, 30, 0)
SWEP.SprintPos = Vector(2, 0, -12)

SWEP.SightAng = Angle(-0.01, 0.85, 0)
SWEP.SightPos = Vector(-3.4, 0, -4.04)

SWEP.CorrectivePos = Vector(0.02, 0, 0)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(90, 0, 0)

// reload

SWEP.ClipSize = 7
SWEP.Ammo = "357"

SWEP.ReloadTimeMult = 1.5

SWEP.DropMagazineModel = "models/weapons/tacint/magazines/p2000.mdl"
SWEP.DropMagazineImpact = "pistol"

// sounds

local path = "tacrp/weapons/p2000/p2000_"
local path1 = "tacint_extras/automag/"

SWEP.Sound_Shoot = "^" .. path1 .. "deagle-1.wav"
SWEP.Sound_Shoot_Silenced = path .. "fire_silenced-1.wav"

SWEP.Vol_Shoot = 110
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 4

SWEP.MuzzleEffect = "muzzleflash_pistol"

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
    ["deploy"] = "draw",
    ["fire_iron"] = "shoot2",
    ["fire"] = {"shoot1", "shoot2", "shoot3"},
    ["blind_fire"] = {"blind_shoot1", "blind_shoot2", "blind_shoot3"},
    ["melee"] = {"melee1", "melee2"},
    ["reload"] = "reload2",
}

SWEP.DeployTimeMult = 1.25

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -1, -0.8),
    vm_ang = Angle(0, 3, 0),
    t = 0.4,
    tmax = 0.5,
    bones = {
        {
            bone = "ValveBiped.slide",
            pos = Vector(0, 0, -3),
            t0 = 0.05,
            t1 = 0.35,
        },
        {
            bone = "ValveBiped.hammer",
            ang = Angle(-170, 0, 0),
            t0 = 0.05,
            t1 = 0.4,
        },
        {
            bone = "ValveBiped.Bip01_R_Finger1",
            ang = Angle(0, -15, 0),
            t0 = 0,
            t1 = 0.2,
        },
        {
            bone = "ValveBiped.Bip01_R_Finger11",
            ang = Angle(-35, 0, 0),
            t0 = 0,
            t1 = 0.15,
        },
    },
}

SWEP.NoIdle = true

SWEP.ShootTimeMult = 0.5

SWEP.LastShot = true

// attachments

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = "optic_pistol",
        Bone = "ValveBiped.p2000_rootbone",
        WMBone = "Box01",
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        VMScale = 1,
        WMScale = 1,
        Pos_VM = Vector(-4, -0.14, -0.4),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, -2.5, -0.75),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "barrel",
        Bone = "ValveBiped.barrel_assembly",
        WMBone = "Box01",
        AttachSound = "tacrp/weapons/silencer_on.wav",
        DetachSound = "tacrp/weapons/silencer_off.wav",
        VMScale = 0.5,
        WMScale = 0.5,
        Pos_VM = Vector(-0.5, 0.39, 6),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, 8, -1.5),
        Ang_WM = Angle(0, -90, 0),
    },
    [3] = {
        PrintName = "Tactical",
        Category = "tactical",
        Bone = "ValveBiped.p2000_rootbone",
        WMBone = "Box01",
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
        VMScale = 1.1,
        WMScale = 1.3,
        Pos_VM = Vector(-2.75, 0, 8),
        Ang_VM = Angle(90, 0, 180),
        Pos_WM = Vector(0, 6.5, -2),
        Ang_WM = Angle(0, -90, 180),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_extmag_pistol2", "acc_holster", "acc_brace"},
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
        Category = {"trigger_revolver"},
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

local function addsound(name, spath)
    sound.Add({
        name = name,
        channel = 16,
        volume = 1.0,
        sound = spath
    })
end

addsound("tacint_extras_automag.clip_in", path1 .. "clip_in.wav")
addsound("tacint_extras_automag.clip_in-mid", path1 .. "clip_in.wav")
addsound("tacint_extras_automag.clip_out", path1 .. "clip_out.wav")
addsound("tacint_extras_automag.slide_action", path1 .. "slide_back.wav")
addsound("tacint_extras_automag.slide_shut", path1 .. "slide_shut.wav")
addsound("tacint_extras_automag.cock_hammer", path .. "cockhammer.wav")