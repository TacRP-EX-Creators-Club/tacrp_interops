SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "HK VP-70"
SWEP.Category = "Tactical RP" // "Tactical RP (Extras)"

SWEP.SubCatTier = "2Operator"
SWEP.SubCatType = "2Machine Pistol"

SWEP.Description = "Polymer pistol with an innovative holster stock that allows for incredibly fast burst fire."

SWEP.ViewModel = "models/weapons/tacint_extras/v_vp70.mdl"
SWEP.WorldModel = "models/weapons/tacint_extras/w_vp70.mdl"

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 17,
        Damage_Min = 9,
        PostBurstDelay = 0.2,

        MoveSpeedMult = 0.95,
        ShootingSpeedMult = 0.75,
        SightedSpeedMult = 0.8,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 13,
        Damage_Min = 5,
        Range_Min = 200,
        Range_Max = 1600,

        PostBurstDelay = 0.25,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.9,
            [HITGROUP_RIGHTARM] = 0.9,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },

        ReloadTimeMult = 1.2 * 1.25,

        MoveSpeedMult = 0.95,
        ShootingSpeedMult = 0.85,
        MeleeSpeedMult = 1,
        SightedSpeedMult = 0.6,
        ReloadSpeedMult = 0.8,
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 10,
        Damage_Min = 5,
        PostBurstDelay = 0.2,

        MoveSpeedMult = 0.95,
        ShootingSpeedMult = 0.75,
        SightedSpeedMult = 0.8,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.MachinePistol

// "ballistics"

SWEP.Damage_Max = 20
SWEP.Damage_Min = 10
SWEP.Range_Min = 700 // distance for which to maintain maximum damage
SWEP.Range_Max = 1800 // distance at which we drop to minimum damage
SWEP.Penetration = 4 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.65
SWEP.ArmorBonus = 1

SWEP.MuzzleVelocity = 10500

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 4,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.9
}

// misc. shooting

SWEP.Firemodes = {-3, 1}
SWEP.RPM = 900
SWEP.RPMMultBurst = 2

SWEP.PostBurstDelay = 0.16
SWEP.RunawayBurst = true

SWEP.Spread = 0.005

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 9
SWEP.RecoilResetTime = 0.15
SWEP.RecoilDissipationRate = 18
SWEP.RecoilFirstShotMult = 0.5 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 1
SWEP.RecoilKick = 2
SWEP.RecoilStability = 0.5

SWEP.RecoilSpreadPenalty = 0.0025
SWEP.HipFireSpreadPenalty = 0.025

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.975
SWEP.ShootingSpeedMult = 0.6
SWEP.SightedSpeedMult = 0.7

SWEP.ReloadSpeedMult = 0.75

SWEP.AimDownSightsTime = 0.27
SWEP.SprintToFireTime = 0.3

SWEP.Sway = 1.15
SWEP.ScopedSway = 0.2

SWEP.FreeAimMaxAngle = 4.5

// hold types

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_PISTOL

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(0, -2, -5)

SWEP.SprintAng = Angle(0, 30, 0)
SWEP.SprintPos = Vector(2, 0, -12)

SWEP.SightAng = Angle(0, 0.1, 0)
SWEP.SightPos = Vector(-3.19, -6, -3.15)

SWEP.CorrectivePos = Vector(0.02, -1, 0)
SWEP.CorrectiveAng = Angle(0.05, -0.05, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(90, 0, 0)

// reload

SWEP.ClipSize = 18
SWEP.Ammo = "pistol"

SWEP.ReloadUpInTime = 1

SWEP.ReloadTimeMult = 1.15
SWEP.DropMagazineTime = 0.25
SWEP.DropMagazineModel = "models/weapons/tacint_extras/magazines/vp70.mdl"
SWEP.DropMagazineImpact = "pistol"

// sounds

local path = "TacRP/weapons/vertec/vertec_"
local path2 = "tacint_extras/vp70/"

SWEP.Sound_Shoot = "^" .. path2 .. "fire-1.wav"
SWEP.Sound_Shoot_Silenced = "tacrp_extras/glock/" .. "fire_silenced-1.wav"

SWEP.Vol_Shoot = 110
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 4

SWEP.MuzzleEffect = "muzzleflash_pistol"

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "draw",
    ["fire_iron"] = "shoot2",
    ["fire"] = {"shoot1", "shoot2", "shoot3"},
    ["blind_fire"] = {"blind_shoot1", "blind_shoot2", "blind_shoot3"},
    ["melee"] = {"melee1", "melee2"}
}


SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -0.5, -0.6),
    vm_ang = Angle(0, 2, 0),
    t = 0.1,
    tmax = 0.1,
    bones = {
        {
            bone = "ValveBiped.slide",
            pos = Vector(0, 0, -3),
            t0 = 0,
            t1 = 0.1,
        },
        {
            bone = "ValveBiped.Bip01_R_Finger1",
            ang = Angle(0, -15, 0),
            t0 = 0,
            t1 = 0.05,
        },
        {
            bone = "ValveBiped.Bip01_R_Finger11",
            ang = Angle(-35, 0, 0),
            t0 = 0,
            t1 = 0.075,
        },
    },
}

SWEP.NoIdle = true

SWEP.ShootTimeMult = 0.6
SWEP.DeployTimeMult = 1.5

// attachments

SWEP.AttachmentElements = {
    ["foldstock"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        }
    },
}


SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = "optic_pistol",
        Bone = "ValveBiped.slide",
        WMBone = "ValveBiped.Bip01_R_Hand", // someone forgor to rig the box bone
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        VMScale = 0.9,
        WMScale = 1,
        Pos_VM = Vector(0, 0.7, -0.2),
        Ang_VM = Angle(0, 90, 180),
        Pos_WM = Vector(3.5, 1.2, -4.25),
        Ang_WM = Angle(180, 0, 0),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "ValveBiped.barrel",
        WMBone = "ValveBiped.Bip01_R_Hand",
        AttachSound = "tacrp/weapons/silencer_on.wav",
        DetachSound = "tacrp/weapons/silencer_off.wav",
        VMScale = 0.5,
        WMScale = 0.6,
        Pos_VM = Vector(-0, 0, 5.8),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(14.2, 1.2, -4.25),
        Ang_WM = Angle(0, 0, 0),
    },
    [3] = {
        PrintName = "Tactical",
        Category = "tactical",
        Bone = "ValveBiped.vertec_rootbone",
        WMBone = "ValveBiped.Bip01_R_Hand",
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
        VMScale = 0.75,
        WMScale = 0.75,
        Pos_VM = Vector(-2.1, -0.23, 5.5),
        Ang_VM = Angle(90, 0, 180),
        Pos_WM = Vector(9.5, 1.2, -2.6),
        Ang_WM = Angle(0, 0, 0),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_extmag_pistol", "acc_holster"},
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
        Category = {"trigger", "trigger_burstauto", "trigger_vp70"},
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

addsound("tacint_extras_vp70.clip_in", path2 .. "clip_in.wav")
addsound("tacint_extras_vp70.clip_in-mid", path .. "clip_in-mid.wav")
addsound("tacint_extras_vp70.clip_out", path2 .. "clip_out.wav")
addsound("tacint_extras_vp70.slide_action", path .. "slide_action.wav")
addsound("tacint_extras_vp70.slide_shut", path .. "slide_shut.wav")
addsound("tacint_extras_vp70.cock_hammer", path .. "cockhammer.wav")
