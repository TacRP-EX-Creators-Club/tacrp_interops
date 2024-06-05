SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Saiga-12K"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "2Operator"
SWEP.SubCatType = "5Shotgun"

SWEP.Description = "High capacity shotgun feeding from a box magazine. Tight spread and high firerate, but damage is relatively low."

SWEP.Trivia_Caliber = "12 Gauge"
SWEP.Trivia_Manufacturer = "Kalashnikov Concern"
SWEP.Trivia_Year = "1997"

SWEP.Faction = TacRP.FACTION_NEUTRAL
SWEP.Credits = [[
Assets: Battlefield 3
Animation: Tactical Intervention
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_saiga.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_saiga.mdl"

SWEP.Slot = 2
SWEP.SlotAlt = 3

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 6,
        Damage_Min = 2,
        Range_Min = 200,
        Range_Max = 2500,
        Num = 6,
        RPM = 200,

        Spread = 0.02,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 1,
            [HITGROUP_RIGHTARM] = 1,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 10,
        Damage_Min = 3,
        RPM = 200,

        RecoilSpreadPenalty = 0.004,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 1.5,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.75,
            [HITGROUP_RIGHTARM] = 0.75,
            [HITGROUP_LEFTLEG] = 0.5,
            [HITGROUP_RIGHTLEG] = 0.5,
            [HITGROUP_GEAR] = 0.9
        },
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        RecoilMaximum = 10
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.AutoShotgun

// "ballistics"

SWEP.ShootTimeMult = 0.85

SWEP.Damage_Max = 12
SWEP.Damage_Min = 7
SWEP.Range_Min = 500 // distance for which to maintain maximum damage
SWEP.Range_Max = 3000 // distance at which we drop to minimum damage
SWEP.Penetration = 1 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.45
SWEP.ArmorBonus = 1.25

SWEP.Num = 6

SWEP.MuzzleVelocity = 13000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 1.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
    [HITGROUP_GEAR] = 0.9
}

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 300
SWEP.PostBurstDelay = 0.1

SWEP.Spread = 0.015
SWEP.ShotgunPelletSpread = 0.015

SWEP.HipFireSpreadPenalty = 0.02
SWEP.MidAirSpreadPenalty = 0

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 5
SWEP.RecoilResetTime = 0.2
SWEP.RecoilDissipationRate = 8
SWEP.RecoilFirstShotMult = 1.25

SWEP.RecoilVisualKick = 1.5
SWEP.RecoilKick = 7
SWEP.RecoilStability = 0.25
SWEP.RecoilAltMultiplier = 150

SWEP.RecoilSpreadPenalty = 0.009

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.9
SWEP.ShootingSpeedMult = 0.6
SWEP.SightedSpeedMult = 0.7

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.4
SWEP.SprintToFireTime = 0.44

SWEP.Sway = 1
SWEP.ScopedSway = 0.2

SWEP.FreeAimMaxAngle = 5

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_AR2

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -6)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(4, -2, -4)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(0.05, -1, 0)
SWEP.SightPos = Vector(-4.66, -7.5, -3.05)

SWEP.CorrectivePos = Vector(0, 0, -0.05)
SWEP.CorrectiveAng = Angle(0.75, 0.7, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK2
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 8
SWEP.Ammo = "buckshot"

SWEP.ReloadTimeMult = 1.15
SWEP.DropMagazineModel = "models/weapons/tacint_extras/magazines/saiga.mdl"
SWEP.DropMagazineImpact = "metal"

SWEP.ReloadUpInTime = 1.65
SWEP.DropMagazineTime = 0.65


// sounds

local path = "tacint_shark/saiga/"
local path1 = "tacrp/weapons/ak47/ak47_"

SWEP.Sound_Shoot = "^" .. path .. "12k_fire.wav"
SWEP.Sound_Shoot_Silenced = path .. "fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 0 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_m3"
SWEP.EjectEffect = 3

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "deploy",
    ["fire1"] = {"fire3_M", "fire3_R"},
    ["fire2"] = {"fire4_M", "fire4_L"},
    ["fire3"] = {"fire5_M", "fire5_L", "fire5_R"},
    ["fire4"] = {"fire5_M", "fire5_L", "fire5_R"},
    ["fire5"] = {"fire5_M", "fire5_L", "fire5_R"},
    ["fire_iron"] = "fire1_M",
    ["melee"] = {"melee1", "melee2"}
}

SWEP.DeployTimeMult = 1.1

SWEP.AttachmentElements = {
    ["foldstock"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        }
    },
    ["tactical"] = {
        BGs_VM = {
            {2, 1}
        },
        BGs_WM = {
            {2, 1}
        },
    },
}

// attachments

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb_nookp7", "optic_medium"},
        Bone = "ValveBiped.AK47_rootbone",
        WMBone = "Box01",
        InstalledElements = {"tactical"},
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        VMScale = 0.8,
        Pos_VM = Vector(-5.25, 0.1, 5),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, 2.5, 1),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        Bone = "ValveBiped.AK47_rootbone",
        WMBone = "Box01",
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
        Pos_VM = Vector(-4.5, -0.2, 14),
        Pos_WM = Vector(0, 19, -2),
        Ang_VM = Angle(90, 0, -60),
        Ang_WM = Angle(0, -90, 180),
    },
    [3] = {
        PrintName = "Accessory",
        Category = {"acc_foldstock", "acc", "acc_sling", "acc_duffle", "acc_extmag_shotgun"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Trigger",
        Category = {"trigger_semi"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Ammo",
        Category = {"ammo_shotgun2"},
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

addsound("tacint_saiga.remove_clip", path1 .. "remove_clip.wav")
addsound("tacint_saiga.insert_clip", path1 .. "insert_clip.wav")
addsound("tacint_saiga.boltaction", path .. "12k_boltpull.wav")
addsound("tacint_saiga.Buttstock_Back", path1 .. "buttstock_back.wav")