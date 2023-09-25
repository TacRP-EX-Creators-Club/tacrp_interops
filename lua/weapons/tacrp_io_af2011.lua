SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "AF2011-A1"
SWEP.Category = "Tactical RP" // "Tactical RP (Extras)"

SWEP.SubCatTier = "2Operator"
SWEP.SubCatType = "1Sidearm"

SWEP.Description = "Effectively two M1911s welded together, this curiosity fires two bullets per trigger pull for double the damage. However, its exotic design is unwieldy and makes accurate shooting nearly impossible."
// "\"If M1911 is so good, why isn't there a M1911 2?\"\nThis. This is why."

SWEP.ViewModel = "models/weapons/tacint_shark/v_af2011.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_af2011.mdl"

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        MoveSpeedMult = 1,
        ShootingSpeedMult = 0.9,
        SightedSpeedMult = 0.9,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 25,
        Damage_Min = 8,
        RPM = 160,

        Spread = 0.015,
        RecoilPerShot = 1,
        RecoilMaximum = 3.5,
        RecoilResetTime = 0.3,
        RecoilDissipationRate = 6,
        RecoilFirstShotMult = 2,
        RecoilSpreadPenalty = 0.01,

        ReloadTimeMult = 1.15 * 1.25,

        MoveSpeedMult = 1,
        ShootingSpeedMult = 0.9,
        MeleeSpeedMult = 1,
        SightedSpeedMult = 0.75,
        ReloadSpeedMult = 0.9,
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 15,
        Damage_Min = 6,
        RPM = 240,

        MoveSpeedMult = 1,
        ShootingSpeedMult = 0.9,
        SightedSpeedMult = 0.9,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        RecoilSpreadPenalty = 0.005
    }
}

SWEP.TTTReplace = {["weapon_zm_pistol"] = 0.5}

// "ballistics"

SWEP.Damage_Max = 24
SWEP.Damage_Min = 9
SWEP.Range_Min = 400
SWEP.Range_Max = 2500
SWEP.Penetration = 3 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.5

SWEP.MuzzleVelocity = 8000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.25,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.9
}

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 300

SWEP.Num = 2

SWEP.Spread = 0.0125
SWEP.ShotgunPelletSpread = 0.0035

SWEP.RecoilSpreadPenalty = 0.004
SWEP.HipFireSpreadPenalty = 0.0125

SWEP.ShootTimeMult = 0.55

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 6
SWEP.RecoilResetTime = 0.25
SWEP.RecoilDissipationRate = 12
SWEP.RecoilFirstShotMult = 1.5

SWEP.RecoilVisualKick = 1.5
SWEP.RecoilKick = 11
SWEP.RecoilStability = 0.2

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.9
SWEP.ShootingSpeedMult = 0.9
SWEP.SightedSpeedMult = 0.9

SWEP.ReloadSpeedMult = 0.75

SWEP.AimDownSightsTime = 0.29
SWEP.SprintToFireTime = 0.27

SWEP.Sway = 1.25
SWEP.ScopedSway = 0.5

SWEP.FreeAimMaxAngle = 4.5

// hold types

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = "pistol"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_PISTOL

SWEP.PassiveAng = Angle(4, 0, 0)
SWEP.PassivePos = Vector(0, -2, -5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(0, -2, -5)

SWEP.BlindFireSuicideAng = Angle(-125, 0, 45)
SWEP.BlindFireSuicidePos = Vector(25, 14, -5.5)

SWEP.SprintAng = Angle(0, 30, 0)
SWEP.SprintPos = Vector(2, 0, -12)

SWEP.SightAng = Angle(5, 0, 0)
SWEP.SightPos = Vector(-2.375, 0, -3.85)

SWEP.CorrectivePos = Vector(-1.44, 0, 0)
SWEP.CorrectiveAng = Angle(-5, 5, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(90, 0, 0)

// reload

SWEP.AmmoPerShot = 2

SWEP.ClipSize = 14
SWEP.Ammo = "pistol"

SWEP.ReloadTimeMult = 1.15

SWEP.DropMagazineModel = "models/weapons/tacint_extras/magazines/af2011.mdl"
SWEP.DropMagazineImpact = "pistol"

SWEP.ReloadUpInTime = 1.2
SWEP.DropMagazineTime = 0.2

// sounds

local path = "tacrp/weapons/sphinx/"
local path1 = "tacint_shark/af2011/"

SWEP.Sound_Shoot = "^" .. path1 .. "af2011a1-1.wav"

SWEP.Vol_Shoot = 110
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

SWEP.EffectsAlternate = true
SWEP.EffectsDoubled = true

SWEP.QCA_MuzzleL = 1
SWEP.QCA_MuzzleR = 2
SWEP.QCA_EjectL = 3
SWEP.QCA_EjectR = 4

SWEP.MuzzleEffect = "muzzleflash_pistol"

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "draw",
    ["fire"] = {"shoot1", "shoot2", "shoot3"},
    ["blind_fire"] = {"blind_shoot1", "blind_shoot2", "blind_shoot3"},
    ["melee"] = {"melee1", "melee2"}
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -0.5, -1.2),
    vm_ang = Angle(0, 4, 0),
    t = 0.25,
    tmax = 0.3,
    bones = {
        {
            bone = "slide",
            pos = Vector(0, 0, -3),
            t0 = 0,
            t1 = 0.25,
        },
        {
            bone = "hammer",
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

SWEP.LastShot = true

// attachments

SWEP.AttachmentElements = {
    ["sights"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        },
    },
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = "optic_pistol",
        Bone = "slide",
        WMBone = "Box01",
        InstalledElements = {"sights"},
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        VMScale = 1,
        WMScale = 1,
        Pos_VM = Vector(0, 0, 0.75),
        Ang_VM = Angle(0, -90, 0),
        Pos_WM = Vector(0, -1.5, -0.75),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "barrel",
        Bone = "barrel",
        WMBone = "Box01",
        AttachSound = "tacrp/weapons/silencer_on.wav",
        DetachSound = "tacrp/weapons/silencer_off.wav",
        Pos_VM = Vector(-0.5, 0, 7),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, 8, -1.5),
        Ang_WM = Angle(0, -90, 0),
    },
    [3] = {
        PrintName = "Tactical",
        Category = {"tactical"},
        Bone = "sphinx_ROOT",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        VMScale = 1.1,
        WMScale = 1.3,
        Pos_VM = Vector(-2, 0.1, 6.5),
        Ang_VM = Angle(90, 0, 180),
        Pos_WM = Vector(0, 5.5, -2.75),
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
        Category = {"bolt_automatic", "bolt_af2011"},
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

addsound("tacint_af2011.clip_in", {path .. "clip_in-1.wav", path .. "clip_in-2.wav"})
addsound("tacint_af2011.clip_out", path .. "clip_out.wav")
addsound("tacint_af2011.slide_back", path .. "slide_back-1.wav")
addsound("tacint_af2011.slide_back", path .. "slide_back-2.wav")
addsound("tacint_af2011.slide_forward", path .. "slide_forward-1.wav")
addsound("tacint_af2011.slide_forward", path .. "slide_forward-2.wav")
addsound("tacint_af2011.slide_shut", path .. "slide_shut-1.wav")
addsound("tacint_af2011.cock_hammer", path .. "cockhammer.wav")
addsound("tacint_af2011.safety_switch", path .. "safety_switch.wav")
