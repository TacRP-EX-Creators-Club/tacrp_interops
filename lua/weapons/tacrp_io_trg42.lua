SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Sako TRG-42"
SWEP.Category = "Tactical RP" // "Tactical RP (Arctic)"

SWEP.SubCatTier = "3Quality"
SWEP.SubCatType = "7Sniper Rifle"

SWEP.Description = "Magnum caliber sniper rifle very powerful at long range.\nEquipped with a 12x scope by default."

// https://gamebanana.com/mods/211224
SWEP.ViewModel = "models/weapons/tacint_extras/v_trg42.mdl"
SWEP.WorldModel = "models/weapons/tacint/w_uratio.mdl"

SWEP.Slot = 2

SWEP.ArcadeStats = {

    Damage_Max = 60,
    Damage_Min = 125,

    Range_Min = 1200,
    Range_Max = 4000,

    MoveSpeedMult = 0.8,
    ShootingSpeedMult = 0.55,
    SightedSpeedMult = 0.75,
    MeleeSpeedMult = 1,
    ReloadSpeedMult = 1,
}

// "ballistics"

SWEP.Damage_Max = 120 // damage at minimum range
SWEP.Damage_Min = 75 // damage at maximum range
SWEP.Range_Min = 3000 // distance for which to maintain maximum damage
SWEP.Range_Max = 7000 // distance at which we drop to minimum damage
SWEP.Penetration = 17 // units of metal this weapon can penetrate
SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1.25,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.8,
    [HITGROUP_RIGHTLEG] = 0.8,
    [HITGROUP_GEAR] = 0.9
}

SWEP.MuzzleVelocity = 38000

// misc. shooting

SWEP.Firemode = 1

SWEP.FiremodeName = "Bolt-Action" // only used externally for firemode name distinction

SWEP.RPM = 30

SWEP.Spread = 0.00

SWEP.HipFireSpreadPenalty = 0.08
SWEP.PeekPenaltyFraction = 0.25

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 1
SWEP.RecoilResetTime = 0.5 // time after you stop shooting for recoil to start dissipating
SWEP.RecoilDissipationRate = 1
SWEP.RecoilFirstShotMult = 1 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 5

SWEP.RecoilKick = 5

SWEP.RecoilSpreadPenalty = 0 // extra spread per one unit of recoil

SWEP.CanBlindFire = true

SWEP.ShootTimeMult = 1.25

// handling

SWEP.MoveSpeedMult = 0.75
SWEP.ShootingSpeedMult = 0.25
SWEP.SightedSpeedMult = 0.15
SWEP.MeleeSpeedMult = 0.5
SWEP.ReloadSpeedMult = 0.3

SWEP.AimDownSightsTime = 0.38
SWEP.SprintToFireTime = 0.46

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false
SWEP.HoldTypeNPC = "shotgun"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_AR2

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(1.5, -2, -5.5)

SWEP.BlindFireAng = Angle(-10, -15, -0)
SWEP.BlindFirePos = Vector(3, -2, -2)

SWEP.BlindFireSuicideAng = Angle(0, 115, 0)
SWEP.BlindFireSuicidePos = Vector(0, 32, -24)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -4)

SWEP.SightAng = Angle(0.02, 0.11, 0)
SWEP.SightPos = Vector(-3.855, -11, -3.52)

SWEP.CorrectivePos = Vector(0.025, 0, 0.1)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// scope

SWEP.Scope = true
SWEP.ScopeOverlay = Material("tacrp/scopes/sniper.png", "mips smooth") // Material("path/to/overlay")
SWEP.ScopeFOV = 90 / 12
SWEP.ScopeLevels = 1 // 2 = like CS:S
SWEP.ScopeHideWeapon = true

// reload

SWEP.ClipSize = 5
SWEP.Ammo = "SniperPenetratedRound"

SWEP.ReloadTimeMult = 1.15
SWEP.DropMagazineImpact = "metal"
SWEP.DropMagazineModel = "models/weapons/tacint/magazines/uratio.mdl"

// sounds

local path = "TacRP/weapons/uratio/uratio_"
local path1 = "tacint_extras/trg42/"

SWEP.Sound_Shoot = "^" .. path1 .. "awp1.wav"
SWEP.Sound_Shoot_Silenced = "TacRP/weapons/ak47/ak47_fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.EjectEffect = 2
SWEP.EjectDelay = 0.9

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
    ["fire"] = {"shoot1", "shoot2"},
    ["blind_fire"] = "blind_shoot1"
}

// attachments

SWEP.AttachmentElements = {
    ["foldstock"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        },
    },
    ["optic"] = {
        BGs_VM = {
            {2, 1}
        },
        BGs_WM = {
            {2, 1}
        },
    },
    ["irons"] = {
        BGs_VM = {
            {3, 1}
        },
    },
    ["muzzle"] = {
        BGs_VM = {
            {4, 1}
        },
        BGs_WM = {
            {4, 1}
        },
    },
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"ironsights_sniper", "optic_cqb", "optic_medium", "optic_sniper"},
        WMBone = "Box01",
        Bone = "ValveBiped.uratio_rootbone",
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        InstalledElements = {"optic"},
        VMScale = 0.8,
        Pos_VM = Vector(-5.1, 0.02, 6),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, 5, 2),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        WMBone = "Box01",
        Bone = "ValveBiped.uratio_rootbone",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        InstalledElements = {"muzzle"},
        Pos_VM = Vector(-4.1, 0, 36.5),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, 35, 0.25),
        Ang_WM = Angle(0, -90, 0),
    },
    [3] = {
        PrintName = "Tactical",
        Category = "tactical",
        WMBone = "Box01",
        Bone = "ValveBiped.uratio_rootbone",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        Pos_VM = Vector(-2.25, 0, 17.5),
        Ang_VM = Angle(90, 0, 180),
        Pos_WM = Vector(0, 19.5, -1.5),
        Ang_WM = Angle(0, -90, 180),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_foldstock", "acc_extmag_sniper", "acc_sling", "acc_duffle", "acc_bipod"},
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
        Category = {"ammo_sniper"},
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

addsound("tacint_extras_trg42.Clip_Out", path .. "clip_out.wav")
addsound("tacint_extras_trg42.Clip_In", path .. "clip_in.wav")
addsound("tacint_extras_trg42.Bolt_Back", path .. "bolt_back.wav")
addsound("tacint_extras_trg42.bolt_forward", path .. "bolt_forward.wav")
addsound("tacint_extras_trg42.safety", path .. "safety.wav")
addsound("tacint_extras_trg42.buttstock_back", path .. "buttstock_back.wav")
addsound("tacint_extras_trg42.buttstock_rest_down", path .. "buttstock_rest_down.wav")
addsound("tacint_extras_trg42.flip_up_cover", path .. "flip_up_cover.wav")