SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "HK USC"
SWEP.Category = "Tactical RP" // "Tactical RP (Extras)"

SWEP.SubCatTier = "3Security"
SWEP.SubCatType = "5Sporter Carbine"


SWEP.Description = "Semi-automatic carbine variant of the UMP. Low capacity, but retains damage better at medium range, and the gripstock provides extra stability."

SWEP.ViewModel = "models/weapons/tacint_extras/v_usc.mdl"
SWEP.WorldModel = "models/weapons/tacint_extras/w_ump45.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 28,
        Damage_Min = 13,

        MoveSpeedMult = 0.9,
        ShootingSpeedMult = 0.8,
        SightedSpeedMult = 0.85,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 18,
        Damage_Min = 10,

        Range_Min = 250,
        Range_Max = 2200,

        RecoilMaximum = 8,
        RecoilSpreadPenalty = 0.003,
        HipFireSpreadPenalty = 0.02,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2,
            [HITGROUP_CHEST] = 1.25,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 1,
            [HITGROUP_RIGHTARM] = 1,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },

        ReloadTimeMult = 1.25,

        MoveSpeedMult = 0.95,
        ShootingSpeedMult = 0.85,
        MeleeSpeedMult = 1,
        SightedSpeedMult = 0.6,
        ReloadSpeedMult = 0.7,
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 15,
        Damage_Min = 8,

        MoveSpeedMult = 0.9,
        ShootingSpeedMult = 0.8,
        SightedSpeedMult = 0.85,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.SMG

// "ballistics"

SWEP.Damage_Max = 25
SWEP.Damage_Min = 11
SWEP.Range_Min = 900 // distance for which to maintain maximum damage
SWEP.Range_Max = 4000 // distance at which we drop to minimum damage
SWEP.Penetration = 5 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.75

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 4,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.25,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
    [HITGROUP_GEAR] = 0.9
}

SWEP.MuzzleVelocity = 13000

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 400

SWEP.Spread = 0.002

SWEP.ShootTimeMult = 0.5

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 5
SWEP.RecoilResetTime = 0.12 // time after you stop shooting for recoil to start dissipating
SWEP.RecoilDissipationRate = 7
SWEP.RecoilFirstShotMult = 0.75

SWEP.RecoilVisualKick = 0.5

SWEP.RecoilKick = 3.5

SWEP.RecoilSpreadPenalty = 0.002

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.95
SWEP.ShootingSpeedMult = 0.8
SWEP.SightedSpeedMult = 0.7

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.3
SWEP.SprintToFireTime = 0.35

SWEP.Sway = 0.85
SWEP.ScopedSway = 0.175

SWEP.FreeAimMaxAngle = 4

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -4, -5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(0, -4, -3)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(8, -1, -2)

SWEP.SightAng = Angle(-0, 0, 0)
SWEP.SightPos = Vector(-4.53, -7.5, -3.535)

SWEP.CorrectivePos = Vector(0, 0, 0)
SWEP.CorrectiveAng = Angle(-0.075, 0.2, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 10
SWEP.Ammo = "pistol"

SWEP.ReloadTimeMult = 1
SWEP.DropMagazineModel = "models/weapons/tacint_extras/magazines/ump45.mdl"
SWEP.DropMagazineImpact = "plastic"

SWEP.ReloadUpInTime = 1.55
SWEP.DropMagazineTime = 1

// sounds

local path = "TacRP/weapons/mp5/mp5_"
local path2 = "tacint_extras/usc/"

SWEP.Sound_Shoot = "^" .. path2 .. "ump45-2.wav"
SWEP.Sound_Shoot_Silenced = path2 .. "fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_ak47"

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
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium"},
        Bone = "ValveBiped.mp5_rootbone",
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        Pos_VM = Vector(-6.3, -0.35, 4),
        Pos_WM = Vector(7, 1.6, -7),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, -3.5, 180),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "ValveBiped.mp5_rootbone",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        Pos_VM = Vector(-3.9, -0.35, 25),
        Pos_WM = Vector(26, 2.5, -5),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, -3.5, 180),
    },
    [3] = {
        PrintName = "Tactical",
        Category = "tactical",
        Bone = "ValveBiped.mp5_rootbone",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        Pos_VM = Vector(-3.75, 0.7, 13),
        Pos_WM = Vector(14, 1.3, -5),
        Ang_VM = Angle(90, 0, 90),
        Ang_WM = Angle(0, -3.5, -90),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_sling", "acc_duffle", "acc_extmag_pistol"},
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

addsound("tacint_extras_usc.remove_clip1", path2 .. "ump45_clipout.wav")
addsound("tacint_extras_usc.insert_clip1", path2 .. "ump45_clipin.wav")
addsound("tacint_extras_usc.insert_clip-mid", path .. "insert_clip-mid.wav")
addsound("tacint_extras_usc.HK_Slap", path2 .. "ump45_boltslap.wav")
addsound("tacint_extras_usc.bolt_back", path .. "bolt_back.wav")
addsound("tacint_extras_usc.fire_select", {
    path .. "fire_select-1.wav",
    path .. "fire_select-2.wav",
    path .. "fire_select-3.wav",
})