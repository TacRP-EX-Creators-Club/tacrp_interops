SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "SW Model 500"
SWEP.AbbrevName = "SW M500"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "1Elite"
SWEP.SubCatType = "2Magnum Pistol"

SWEP.Description = "Massive long barrel revolver firing a massive magnum round, reigning as the most powerful production handgun in the world."
SWEP.Description_Quote = "\"You dweebs just ruined a five year investigation!\""

SWEP.Trivia_Caliber = ".500 S&W Magnum"
SWEP.Trivia_Manufacturer = "Smith & Wesson"
SWEP.Trivia_Year = "2003"

SWEP.Faction = TacRP.FACTION_NEUTRAL
SWEP.Credits = [[
Assets: Alliance of Valiant Arms
Originally ported to CS 1.6 by GR_Lucia
Sound: Ghost597879, MSKyuuni & Zira
Animation: Tactical Intervention
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_500mag.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_m500.mdl"

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 85,
        Damage_Min = 58,
        Range_Min = 300,
        Range_Max = 6000,
        RPM = 70,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2.5,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.9,
            [HITGROUP_RIGHTARM] = 0.9,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.75
        },

        HipFireSpreadPenalty = 0.075,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 50,
        Damage_Min = 30,
        Range_Min = 300,
        Range_Max = 3500,
        RPM = 70,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 3,
            [HITGROUP_CHEST] = 1.25,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 1,
            [HITGROUP_RIGHTARM] = 1,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.75
        },

        RecoilMaximum = 1.5,
        RecoilResetTime = 0.25,
        RecoilDissipationRate = 1.2,
        HipFireSpreadPenalty = 0.06,
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 80,
        Damage_Min = 50,
        Range_Min = 300,
        Range_Max = 5000,
        RPM = 90,

        HipFireSpreadPenalty = 0.045,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        Spread = 0.005,
        RecoilSpreadPenalty = 0.018,
        RecoilResetTime = 0.7,
        RecoilDissipationRate = 5
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.Magnum

// "ballistics"

SWEP.Damage_Max = 85 // damage at minimum range
SWEP.Damage_Min = 60 // damage at maximum range
SWEP.Range_Min = 300 // distance for which to maintain maximum damage
SWEP.Range_Max = 3000 // distance at which we drop to minimum damage
SWEP.Penetration = 9 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.9
SWEP.ArmorBonus = 5

SWEP.MuzzleVelocity = 16500

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 2.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.2,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.75
}

// misc. shooting

SWEP.Firemode = 1

SWEP.FiremodeName = "Double-Action" // only used externally for firemode name distinction

SWEP.RPM = 90

SWEP.Spread = 0.004

SWEP.ShootTimeMult = 1

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 2
SWEP.RecoilResetTime = 0.4
SWEP.RecoilDissipationRate = 1.75
SWEP.RecoilFirstShotMult = 1 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 3
SWEP.RecoilKick = 18
SWEP.RecoilStability = 0.5
SWEP.RecoilAltMultiplier = 150

SWEP.RecoilSpreadPenalty = 0.05 // extra spread per one unit of recoil
SWEP.HipFireSpreadPenalty = 0.04

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.9
SWEP.ShootingSpeedMult = 0.5
SWEP.SightedSpeedMult = 0.7

SWEP.ReloadSpeedMult = 0.75

SWEP.AimDownSightsTime = 0.34
SWEP.SprintToFireTime = 0.29

// hold types

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = "pistol"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_REVOLVER

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(3, -2, -5)

SWEP.BlindFireSuicideAng = Angle(-135, 0, 60)
SWEP.BlindFireSuicidePos = Vector(30, 24, -6)

SWEP.SprintAng = Angle(0, 30, 0)
SWEP.SprintPos = Vector(2, 0, -12)

SWEP.SightAng = Angle(0.01, 0.6, 0.4)
SWEP.SightPos = Vector(-3.45, 0, -4.25)

SWEP.CorrectiveAng = Angle(-0.2, 0, 0.5)
SWEP.CorrectivePos = Vector(-0.125, 0, 0.13)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(90, 0, 0)

SWEP.Sway = 2
SWEP.ScopedSway = 0.75

SWEP.FreeAimMaxAngle = 5

// reload

SWEP.ClipSize = 5
SWEP.Ammo = "357"

SWEP.ReloadTimeMult = 1.25

SWEP.ReloadUpInTime = 1.35

SWEP.JamSkipFix = true

// sounds

local path = "tacint_shark/500mag/"
local path1 = "tacrp/weapons/mr96/"
SWEP.Sound_Shoot = "^" .. path .. "deagle-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 2
SWEP.QCA_Eject = 0
SWEP.EjectEffect = 0

SWEP.MuzzleEffect = "muzzleflash_1"

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "draw",
    ["fire"] = {"shoot1", "shoot2", "shoot3"},
    ["fire_iron"] = "shoot1",
    ["blind_fire"] = {"blind_shoot1", "blind_shoot2"},
    ["melee"] = {"melee1", "melee2"},
    ["jam"] = "draw",
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -3, -5),
    vm_ang = Angle(0, 20, 0),
    t = 0.75,
    tmax = 0.75,
    bones = {
        {
            bone = "ValveBiped.cylinder",
            ang = Angle(-60, 0, 0),
            t0 = 0,
            t1 = 0.3,
        },
        {
            bone = "ValveBiped.hammer",
            ang = Angle(35, 0, 0),
            t0 = 0,
            t1 = 0.15,
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

// attachments

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium"},
        Bone = "ValveBiped.mr96_rootbone",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        VMScale = 1,
        WMScale = 1,
        Pos_VM = Vector(-4.7, -0.1, 10),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0.15, 8, 0),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Tactical",
        Category = "tactical",
        Bone = "ValveBiped.mr96_rootbone",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        VMScale = 1,
        WMScale = 1,
        Pos_VM = Vector(-2.75, -0.1, 11),
        Ang_VM = Angle(90, 0, 180),
        Pos_WM = Vector(0, 10, -1.75),
        Ang_WM = Angle(0, -90, 180),
    },
    [3] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_holster", "acc_brace"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Trigger",
        Category = {"trigger_revolver"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Ammo",
        Category = {"ammo_pistol", "ammo_roulette"},
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

addsound("tacint_m500.Release_Cylinder", path1 .. "mr96_release_cylinder.wav")
addsound("tacint_m500.Eject_Shells", path1 .. "mr96_eject_shells.wav")
addsound("tacint_m500.Insert_Bullets", path1 .. "mr96_insert_bullets.wav")
addsound("tacint_m500.Shut_Cylinder", path1 .. "mr96_shut_cylinder.wav")
addsound("tacint_m500.Insert_Bullets-Mid", path1 .. "mr96_insert_bullets-mid.wav")
addsound("tacint_m500.Cock_Hammer", path1 .. "mr96_cockhammer.wav")
addsound("tacint_m500.Deploy", path1 .. "mr96_deploy.wav")