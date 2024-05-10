SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "RPK"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "3Security"
SWEP.SubCatType = "4Machine Gun"

SWEP.Description = "Light machine gun derived from an infantry rifle. High damage and good recoil, but mobility and spread is poor."

SWEP.Trivia_Caliber = "7.62x39mm"
SWEP.Trivia_Manufacturer = "Molot" // I checked, neither Izhmash nor Tula ever manufactured the original RPK.
SWEP.Trivia_Year = "1961"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = [[
Model: BOOLY
Texture: 98B's
Animation: Tactical Intervention
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_rpk.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_rpk.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 35,
        Damage_Min = 24,
        Spread = 0.003,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 20,
        Damage_Min = 15,

        Range_Min = 800,
        Range_Max = 3500,

        ClipSize = 50,

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
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 12,
        Damage_Min = 5,
        Spread = 0.005,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        RecoilMaximum = 20,
        HipFireSpreadPenalty = 0.015
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.MachineGun

// "ballistics"

SWEP.Damage_Max = 30
SWEP.Damage_Min = 19
SWEP.Range_Min = 1000 // distance for which to maintain maximum damage
SWEP.Range_Max = 4500 // distance at which we drop to minimum damage
SWEP.Penetration = 10 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.775

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 2.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
    [HITGROUP_GEAR] = 0.9
}

SWEP.MuzzleVelocity = 25000

// misc. shooting

SWEP.Firemodes = {
    2,
    1
}

SWEP.RPM = 550

SWEP.Spread = 0.0075

SWEP.ShootTimeMult = 0.5

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 20
SWEP.RecoilResetTime = 0.22
SWEP.RecoilDissipationRate = 20
SWEP.RecoilFirstShotMult = 2 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 1
SWEP.RecoilKick = 4
SWEP.RecoilStability = 0.4
SWEP.RecoilAltMultiplier = 300

SWEP.RecoilSpreadPenalty = 0.0012
SWEP.HipFireSpreadPenalty = 0.035
SWEP.PeekPenaltyFraction = 0.25

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.875
SWEP.ShootingSpeedMult = 0.5
SWEP.SightedSpeedMult = 0.5

SWEP.ReloadSpeedMult = 0.25

SWEP.AimDownSightsTime = 0.45
SWEP.SprintToFireTime = 0.5

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -4)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(3, -2, -5)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(0, 0.5, 0)
SWEP.SightPos = Vector(-4.7, -7.5, -3.35)

SWEP.CorrectivePos = Vector(0, 0, -0.05)
SWEP.CorrectiveAng = Angle(0.75, 0.7, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK2
SWEP.HolsterPos = Vector(5, 6, -8)
SWEP.HolsterAng = Angle(0, 0, 0)

SWEP.Sway = 2
SWEP.ScopedSway = 0.175

SWEP.FreeAimMaxAngle = 6

SWEP.Bipod = true
SWEP.BipodRecoil = 0.4
SWEP.BipodKick = 0.4

SWEP.ClipSize = 50
SWEP.Ammo = "ar2"

SWEP.ReloadTimeMult = 1.3
SWEP.DropMagazineModel = "models/weapons/tacint_extras/magazines/rpk.mdl"
SWEP.DropMagazineImpact = "metal"

SWEP.ReloadUpInTime = 1.55
SWEP.DropMagazineTime = 0.6

// sounds

local path = "tacrp/weapons/ak47/ak47_"
local path1 = "tacint_shark/rpk/"
local path2 = "tacrp_extras/ak47/"

SWEP.Sound_Shoot = "^" .. path1 .. "shoot-2.wav"
SWEP.Sound_Shoot_Silenced = path .. "fire_silenced-1.wav"

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
    ["deploy"] = "unholster",
    ["fire1"] = "fire1_M",
    ["fire2"] = "fire2_M",
    ["fire3"] = "fire3_M",
    ["fire4"] = "fire4_M",
    ["fire5"] = "fire5_M",
    ["melee"] = {"melee1", "melee2"},
    ["jam"] = "mid_reload",
}

SWEP.DeployTimeMult = 3

// attachments

SWEP.AttachmentElements = {
    ["tactical"] = {
        BGs_VM = {
            {2, 1}
        },
        BGs_WM = {
            {2, 1}
        },
    },
    ["bipod"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        },
    },
    ["akmount"] = {
        BGs_VM = {
            {2, 0}
        },
        BGs_WM = {
            {2, 0}
        },
        AttPosMods = {
            [1] = {
                Pos_VM = Vector(-5.3, 0.4, 3),
                Pos_WM = Vector(-0.4, 2, 0.5),
            }
        },
        SortOrder = 2,
    },
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium", "optic_sniper", "optic_ak"},
        Bone = "ValveBiped.AK47_rootbone",
        WMBone = "Box01",
        InstalledElements = {"tactical"},
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        VMScale = 0.8,
        Pos_VM = Vector(-5.3, 0.15, 4),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, 3, 0.5),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = {"silencer", "muzz_ak"},
        Bone = "ValveBiped.AK47_rootbone",
        WMBone = "Box01",
        AttachSound = "tacrp/weapons/silencer_on.wav",
        DetachSound = "tacrp/weapons/silencer_off.wav",
        VMScale = 0.9,
        Pos_VM = Vector(-3.25, 0.15, 34.5),
        Pos_WM = Vector(0, 36.5, -1.75),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, -90, 0),
    },
    [3] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        Bone = "ValveBiped.AK47_rootbone",
        WMBone = "Box01",
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
        Pos_VM = Vector(-3.2, -0.1, 25),
        Pos_WM = Vector(-0.5, 19, -1.75),
        Ang_VM = Angle(90, 0, -90),
        Ang_WM = Angle(0, -90, 90),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_sling", "acc_duffle", "extendedbelt", "acc_bipod"},
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

addsound("tacint_rpk.remove_clip", path1 .. "rpk_magout.wav")
addsound("tacint_rpk.insert_clip", path1 .. "rpk_magin.wav")
addsound("tacint_rpk.boltaction", path2 .. "bolt.mp3")
addsound("tacint_rpk.Buttstock_Back", path .. "buttstock_back.wav")