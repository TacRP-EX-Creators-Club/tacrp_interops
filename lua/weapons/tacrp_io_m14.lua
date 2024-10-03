SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "M14 SOPMOD"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "2Operator"
SWEP.SubCatType = "6Marksman Rifle"

SWEP.Description = "Modernized short barrel rifle with improved mobility and fast automatic fire but punishing recoil.\nEquipped with a 6x scope by default."

SWEP.Trivia_Caliber = "7.62x51mm"
SWEP.Trivia_Manufacturer = "Troy Industries"
SWEP.Trivia_Year = "2001"

SWEP.Faction = TacRP.FACTION_COALITION
SWEP.Credits = [[
Model: General Tso & Twinke Masta
Texture: Thanez, Twinke Masta
Sound: Lakedown, teh strelok & Futon
Animation: Tactical Intervention
]]

// https://gamebanana.com/mods/211865
SWEP.ViewModel = "models/weapons/tacint_extras/v_m14.mdl"
SWEP.WorldModel = "models/weapons/tacint_extras/w_m14.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 32,
        Damage_Min = 45,
        Range_Min = 1500,
        Range_Max = 3500,

        ClipSize = 14,
        DefaultBodygroups = "0001",

        RecoilKick = 5.5,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 20,
        Damage_Min = 35,
        Range_Min = 1500,
        Range_Max = 3000,
        RPM = 420,

        ClipSize = 14,
        DefaultBodygroups = "0001",

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
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 20,
        Damage_Min = 30,
        Range_Min = 1200,
        Range_Max = 3000,
        RPM = 550,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        RecoilMaximum = 14,
        RecoilDissipationRate = 15
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.MarksmanRifle

// "ballistics"

SWEP.Damage_Max = 40
SWEP.Damage_Min = 28
SWEP.Range_Min = 1000
SWEP.Range_Max = 3500
SWEP.Penetration = 12
SWEP.ArmorPenetration = 0.85

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.3,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.75
}

SWEP.MuzzleVelocity = 27500

// misc. shooting

SWEP.Firemodes = {1, 2}

SWEP.RPM = 600

SWEP.Spread = 0.0005

SWEP.ShootTimeMult = 0.5

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 4
SWEP.RecoilResetTime = 0.1
SWEP.RecoilDissipationRate = 8
SWEP.RecoilFirstShotMult = 0.75

SWEP.RecoilVisualKick = 1.5
SWEP.RecoilKick = 5
SWEP.RecoilStability = 0.5
SWEP.RecoilAltMultiplier = 500

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

SWEP.FreeAimMaxAngle = 7

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

SWEP.CorrectivePos = Vector(0.025, -0.5, 0.1)
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

SWEP.ReloadUpInTime = 1.85
SWEP.DropMagazineTime = 0.5

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

SWEP.AnimationTranslationTable = {
    ["fire_iron"] = "shoot2",
    ["deploy"] = "draw",
    ["fire"] = {"shoot1", "shoot2"},
    ["blind_fire"] = "blind_shoot1"
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -0.75, -0.12),
    vm_ang = Angle(0, 0.3, 0),
    t = 0.15,
    tmax = 0.15,
    bones = {
        {
            bone = "ValveBiped.bolt_handle",
            pos = Vector(0, 0, -3),
            t0 = 0.02,
            t1 = 0.1,
        },
    },
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
        Pos_WM = Vector(12, 0.75, -8),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(-22.5, 4, 180),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = {"comp_m14", "silencer"},
        Bone = "ValveBiped.m14_rootbone",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        Pos_VM = Vector(-3.3, 0.2, 26.5),
        Pos_WM = Vector(26.5, -0.4, -12.7),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(-22.5, 5, 180),
        VMScale = 0.75,
        WMScale = 0.75,
    },
    [3] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        Bone = "ValveBiped.m14_rootbone",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        Pos_VM = Vector(-3.6, -0.5, 17),
        Pos_WM = Vector(20, 1, -10.5),
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