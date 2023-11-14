SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Intratec TEC-9"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "3Security"
SWEP.SubCatType = "2Machine Pistol"

SWEP.Description = "Machine pistol notorious for its ease of conversion to fully automatic fire, and subsequent criminal usage."

SWEP.Trivia_Caliber = "9x19mm"
SWEP.Trivia_Manufacturer = "Intratec"
SWEP.Trivia_Year = "1984"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = [[
Model/Texture: Payday 2
Sound: The_AntiPirate
Animation: Tactical Intervention
]]


SWEP.ViewModel = "models/weapons/tacint_extras/v_tec9.mdl"
SWEP.WorldModel = "models/weapons/tacint_extras/w_tec9.mdl"

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 16,
        Damage_Min = 10,

        MoveSpeedMult = 1,
        ShootingSpeedMult = 0.9,
        SightedSpeedMult = 1,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 15,
        Damage_Min = 6,
        Range_Min = 250,
        Range_Max = 1800,

        RPM = 600,

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

        ReloadTimeMult = 1.25 * 1.25,

        MoveSpeedMult = 0.95,
        ShootingSpeedMult = 0.9,
        MeleeSpeedMult = 1,
        SightedSpeedMult = 0.7,
        ReloadSpeedMult = 0.8,
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 6,
        Damage_Min = 2,

        MoveSpeedMult = 1,
        ShootingSpeedMult = 0.9,
        SightedSpeedMult = 1,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        RecoilMaximum = 18,
        Spread = 0.018
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.MachinePistol

// "ballistics"

SWEP.Damage_Max = 15
SWEP.Damage_Min = 10
SWEP.Range_Min = 500
SWEP.Range_Max = 2400
SWEP.Penetration = 6 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.4

SWEP.MuzzleVelocity = 14000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 2.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.9
}

// misc. shooting

SWEP.Firemodes = false
SWEP.Firemode = 2

SWEP.RPM = 1000

SWEP.Spread = 0.012
SWEP.RecoilSpreadPenalty = 0.0017
SWEP.HipFireSpreadPenalty = 0.014

SWEP.ShootTimeMult = 0.4

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 15
SWEP.RecoilResetTime = 0.1 // time after you stop shooting for recoil to start dissipating
SWEP.RecoilDissipationRate = 22
SWEP.RecoilFirstShotMult = 1 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 0.75

SWEP.RecoilKick = 4.5
SWEP.RecoilStability = 0.1

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.975
SWEP.ShootingSpeedMult = 0.75
SWEP.SightedSpeedMult = 0.8

SWEP.ReloadSpeedMult = 0.6

SWEP.AimDownSightsTime = 0.3
SWEP.SprintToFireTime = 0.33

SWEP.Sway = 1
SWEP.ScopedSway = 0.3

SWEP.FreeAimMaxAngle = 4

// hold types

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = "pistol"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(-2.5, -1, 0)
SWEP.PassivePos = Vector(0, -2, -4)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(3, -2, -5)

SWEP.BlindFireSuicideAng = Angle(-135, 0, 45)
SWEP.BlindFireSuicidePos = Vector(31, 25, -5)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(-4.26, -1.025, 1)
SWEP.SightPos = Vector(-5.175, -5, -1.7)

SWEP.CorrectivePos = Vector(1.2, 0, -0.5)
SWEP.CorrectiveAng = Angle(5.5, -2.8, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(90, 0, 0)

// reload

SWEP.ClipSize = 32
SWEP.Ammo = "pistol"

SWEP.ReloadTimeMult = 1.3
SWEP.DropMagazineModel = "models/weapons/tacint/magazines/skorpion.mdl"
SWEP.DropMagazineImpact = "pistol"

SWEP.ReloadUpInTime = 0.9
SWEP.DropMagazineTime = 0.2

// sounds

local path = "TacRP/weapons/skorpion/"
local path1 = "tacint_extras/tec9/"

SWEP.Sound_Shoot = "^" .. path1 .. "fire-1.wav"
SWEP.Sound_Shoot_Silenced = path .. "fire_silenced-1.wav"

SWEP.Vol_Shoot = 110
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_pistol"

// anims

SWEP.AnimationTranslationTable = {
    ["fire_iron"] = "fire2_M",
    ["fire1"] = "fire1_M",
    ["fire2"] = "fire2_M",
    ["fire3"] = "fire3_M",
    ["fire4"] = "fire4_M",
    ["fire5"] = "fire5_M",
    ["melee"] = {"melee1", "melee2"}
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -0.4, -0.35),
    vm_ang = Angle(0, 1, 0),
    t = 0.1,
    tmax = 0.2,
    bones = {
        {
            bone = "bolt_handle",
            pos = Vector(0, 0, -3),
            t0 = 0,
            t1 = 0.1,
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
            t1 = 0.2,
        },
    },
}

// attachments

SWEP.AttachmentElements = {
    ["foldstock"] = {
        BGs_VM = {
            {3, 1}
        },
        BGs_WM = {
            {3, 1}
        }
    },
    ["shroud"] = {
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
        Category = "optic_pistol",
        Bone = "Skorpion_ROOT",
        WMBone = "Bone02",
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        VMScale = 1.2,
        WMScale = 1.2,
        Pos_VM = Vector(4, 0.06, 0.8),
        Ang_VM = Angle(90, 0, 180),
        Pos_WM = Vector(-12, 1.25, -4.5),
        Ang_WM = Angle(0, 0, 180),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = {"silencer", "muzz_tec9"},
        Bone = "Skorpion_ROOT",
        WMBone = "Bone02",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        VMScale = 0.7,
        WMScale = 0.7,
        Pos_VM = Vector(3.35, 0, 13.75),
        Ang_VM = Angle(90, 0, 180),
        Pos_WM = Vector(1.5, 1.25, -4.3),
        Ang_WM = Angle(0, 0, 0),
    },
    [3] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_foldstock2", "acc_extmag_smg", "acc_holster"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
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
        Category = {"ammo_pistol"},
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

addsound("tacint_extras_tec9.Clip_Out", path1 .. "tec9_magout.wav")
addsound("tacint_extras_tec9.Clip_In", path1 .. "tec9_magin.wav")
addsound("tacint_extras_tec9.bolt_action", path1 .. "tec9_charge.wav")