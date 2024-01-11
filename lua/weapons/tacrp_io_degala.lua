
SWEP.Base = "tacrp_base"
SWEP.Spawnable = true
AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Desert Eagle"
SWEP.Category = "Tactical RP" // "Tactical RP (Extras)"

SWEP.SubCatTier = "1Elite"
SWEP.SubCatType = "2Magnum Pistol"

SWEP.Description = "Imposing magnum pistol, as iconic as it gets.\nPowerful and high capacity, but recoil is hard to manage."
SWEP.Description_Quote = "\"one deag, two deag, three deag, four deag...\""

SWEP.Trivia_Caliber = ".50 AE"
SWEP.Trivia_Manufacturer = "Magnum Research"
SWEP.Trivia_Year = "1995" // It's a Mark XIX.  Teardrop safety lever, top scope rail and taller cocking serrations on the slide (yes i am severely autistic).

SWEP.Faction = TacRP.FACTION_NEUTRAL
SWEP.Credits = [[
Model: Vashts1985
Texture: Racer445
Sounds:Vunsunta, XLongWayHome
Animation: Tactical Intervention
]]

SWEP.ViewModel = "models/weapons/tacint_extras/v_deagle.mdl"
SWEP.WorldModel = "models/weapons/tacint_extras/w_deagle.mdl"

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 75,
        Damage_Min = 45,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 45,
        Damage_Min = 20,

        Range_Min = 100,
        Range_Max = 1500,

        RPM = 150,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2.5,
            [HITGROUP_CHEST] = 1.125,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 1,
            [HITGROUP_RIGHTARM] = 1,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.75
        },

        RecoilDissipationRate = 4.5,

        ReloadTimeMult = 1.4 * 1.25,
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 65,
        Damage_Min = 30,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        RecoilDissipationRate = 20
    }
}

// "ballistics"

SWEP.Damage_Max = 80
SWEP.Damage_Min = 50
SWEP.Range_Min = 150
SWEP.Range_Max = 1500
SWEP.Penetration = 10 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.85
SWEP.ArmorBonus = 5

SWEP.MuzzleVelocity = 10000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 2.5,
    [HITGROUP_CHEST] = 1,
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

SWEP.Spread = 0.009

SWEP.ShootTimeMult = 0.7

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 4
SWEP.RecoilResetTime = 0.3
SWEP.RecoilDissipationRate = 5
SWEP.RecoilFirstShotMult = 0.9

SWEP.RecoilVisualKick = 5
SWEP.RecoilKick = 15
SWEP.RecoilStability = 0.5
SWEP.RecoilAltMultiplier = 100

SWEP.RecoilSpreadPenalty = 0.02
SWEP.HipFireSpreadPenalty = 0.02
SWEP.PeekPenaltyFraction = 0.125

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.9
SWEP.ShootingSpeedMult = 0.75
SWEP.SightedSpeedMult = 0.8

SWEP.ReloadSpeedMult = 0.75

SWEP.AimDownSightsTime = 0.32
SWEP.SprintToFireTime = 0.27

SWEP.Sway = 1.5
SWEP.ScopedSway = 0.6

SWEP.FreeAimMaxAngle = 4.5

// hold types

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = "pistol"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_PISTOL

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(0, -2, -5)

SWEP.SprintAng = Angle(0, 30, 0)
SWEP.SprintPos = Vector(2, 0, -12)

SWEP.SightAng = Angle(-0.05, -0.1, 0)
SWEP.SightPos = Vector(-3.28, 0, -4)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(90, 0, 0)

// reload
SWEP.ClipSize = 7
SWEP.Ammo = "357"
SWEP.ReloadTimeMult = 1.4
SWEP.DropMagazineModel = "models/weapons/tacint_extras/magazines/deagle.mdl"
SWEP.DropMagazineImpact = "pistol"

SWEP.ReloadUpInTime = 0.95
SWEP.DropMagazineTime = 0.25

// sounds
local path = "tacint_extras/degala/"
local path1 = "tacrp/weapons/gsr1911/"
SWEP.Sound_Shoot = path .. "deagle-1.wav"
SWEP.Vol_Shoot = 110
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects
// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 4
SWEP.MuzzleEffect = "muzzleflash_1"

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
    ["fire"] = {"shoot1", "shoot2", "shoot3"},
    ["blind_fire"] = {"blind_shoot1", "blind_shoot2", "blind_shoot3"},
    ["melee"] = {"melee1", "melee2"}
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -2, -1.75),
    vm_ang = Angle(0, 8, 0),
    t = 0.4,
    tmax = 0.5,
    bones = {
        {
            bone = "ValveBiped.slide",
            pos = Vector(0, 0, -3),
            t0 = 0,
            t1 = 0.35,
        },
        {
            bone = "ValveBiped.hammer",
            ang = Angle(-15, 0, 0),
            t0 = 0,
            t1 = 0.1,
        },
        {
            bone = "ValveBiped.Bip01_R_Finger1",
            ang = Angle(0, -15, 0),
            t0 = 0,
            t1 = 0.1,
        },
        {
            bone = "ValveBiped.Bip01_R_Finger11",
            ang = Angle(-35, 0, 0),
            t0 = 0,
            t1 = 0.15,
        },
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.Magnum

SWEP.LastShot = true
// attachments

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium"},
        Bone = "ValveBiped.GSR1911_rootbone",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        VMScale = 1,
        WMScale = 1,
        Pos_VM = Vector(-3.8, 0, 5.55),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, -1, -0.85),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = {"barrel"},
        Bone = "ValveBiped.GSR1911_rootbone",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        VMScale = 0.4,
        WMScale = 0.5,
        Pos_VM = Vector(-0.76, 0.7, 7.35),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, 9.25, -1.5),
        Ang_WM = Angle(0, -90, 0),
    },
    [3] = {
        PrintName = "Tactical",
        Category = "tactical",
        Bone = "ValveBiped.GSR1911_rootbone",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        VMScale = 1.1,
        WMScale = 1.3,
        Pos_VM = Vector(-1.7, 0, 7),
        Ang_VM = Angle(90, 0, 180),
        Pos_WM = Vector(0, 5, -3),
        Ang_WM = Angle(0, -90, 180),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_extmag_pistol2", "acc_holster", "acc_brace"},
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

local function addsound(name, spath)
    sound.Add({
        name = name,
        channel = 16,
        volume = 1.0,
        sound = spath
    })
end
addsound("tacint_degala.clip_in", path .. "clip_in.wav")
addsound("tacint_degala.clip_in-mid", path1 .. "gsr1911_clip_in-mid.wav")
addsound("tacint_degala.clip_out", path .. "clip_out.wav")
addsound("tacint_degala.slide_action", path1 .. "gsr1911_slide_action.wav")
addsound("tacint_degala.slide_shut", path .. "sliderelease.wav")
addsound("tacint_degala.cock_hammer", path1 .. "gsr1911_cockhammer.wav")