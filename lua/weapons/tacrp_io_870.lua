SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Remington 870 SPMM"
SWEP.AbbrevName = "R870 SPMM"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "3Security"
SWEP.SubCatType = "5Shotgun"

SWEP.Description = "Nickel plated \"Marine Magnum\" shotgun. Poor handling, but has great capacity and firepower."
SWEP.Description_Quote = "\"There's gold in them thar hills!\""

SWEP.Trivia_Caliber = "12 Gauge"
SWEP.Trivia_Manufacturer = "Remington"
SWEP.Trivia_Year = "1950"

SWEP.Faction = TacRP.FACTION_NEUTRAL
SWEP.Credits = [[
Model: Twinke Masta
Texture: Millenia
Sound: Vunsunta, xLongWayHome
Animation: Tactical Intervention
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_870.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_870.mdl"

SWEP.Slot = 2
SWEP.SlotAlt = 3

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 16,
        Range_Max = 1500,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 10,
        Damage_Min = 4,
        Range_Min = 300,
        Range_Max = 2000,
        Num = 8,
        ClipSize = 8,

        HipFireSpreadPenalty = 0.015,
        RecoilSpreadPenalty = 0.025,

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
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.Shotgun

// "ballistics"

SWEP.Damage_Max = 14
SWEP.Damage_Min = 5
SWEP.Range_Min = 200 // distance for which to maintain maximum damage
SWEP.Range_Max = 1200 // distance at which we drop to minimum damage
SWEP.Penetration = 1 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.625
SWEP.ArmorBonus = 0.5

SWEP.Num = 8

SWEP.MuzzleVelocity = 10000

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

SWEP.FiremodeName = "Pump-Action" // only used externally for firemode name distinction

SWEP.RPM = 65

SWEP.ShootTimeMult = 0.75

SWEP.Spread = 0.018
SWEP.ShotgunPelletSpread = 0.008


SWEP.HipFireSpreadPenalty = 0.01
SWEP.MidAirSpreadPenalty = 0

SWEP.ScopedSpreadPenalty = 0

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 3
SWEP.RecoilResetTime = 0.25 // time after you stop shooting for recoil to start dissipating
SWEP.RecoilDissipationRate = 1
SWEP.RecoilFirstShotMult = 1.1

SWEP.RecoilVisualKick = 2
SWEP.RecoilKick = 15
SWEP.RecoilStability = 0.15

SWEP.RecoilSpreadPenalty = 0.02

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.925
SWEP.ShootingSpeedMult = 0.75
SWEP.SightedSpeedMult = 0.7

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.39
SWEP.SprintToFireTime = 0.43

SWEP.Sway = 0.8
SWEP.ScopedSway = 0.25

SWEP.FreeAimMaxAngle = 4.5

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false
SWEP.HoldTypeNPC = "shotgun"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -4)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(4, -2, -4)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(-0.3, -0.6, 2)
SWEP.SightPos = Vector(-3.32, -4, -2.7)

SWEP.CorrectivePos = Vector(0.31, 0, -0.21)
SWEP.CorrectiveAng = Angle(1.2, 0.1, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK2
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 8
SWEP.Ammo = "buckshot"
SWEP.ShotgunReload = true

SWEP.ReloadTimeMult = 1.15

// sounds

local path = "tacint_shark/870/"

SWEP.Sound_Shoot = "^" .. path .. "m3-1.wav"
SWEP.Sound_Shoot_Silenced = "tacint/weapons/sg551/sg551_fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 0 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.EjectEffect = 3
SWEP.EjectDelay = 0.5

// anims

SWEP.AnimationTranslationTable = {
    ["fire"] = {"shoot1", "shoot2"},
    ["blind_fire"] = {"blind_shoot1"},
    ["melee"] = {"melee1", "melee2"},
    ["reload"] = {"reload", "reload2"},
    ["jam"] = {"reload_finish"}
}

SWEP.AttachmentElements = {
    ["tactical"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        },
    },
}

// attachments

SWEP.NoRMR = true

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium"},
        Bone = "ValveBiped.bekas_rootbone",
        WMBone = "ValveBiped.Bip01_R_Hand",
        InstalledElements = {"tactical"},
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        VMScale = 0.8,
        WMScale = 0.8,
        Pos_VM = Vector(-3.18, 0, 8.5),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(8, 0.1, -5.4),
        Ang_WM = Angle(-25, 3.5, 180),
    },
    [2] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom"},
        Bone = "ValveBiped.bekas_rootbone",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        VMScale = 1.25,
        Pos_VM = Vector(-0.5, 0.3, 27),
        Ang_VM = Angle(90, 0, -180),
        Pos_WM = Vector(25, -0.8, -9.5),
        Ang_WM = Angle(-25, 3.5, 0),
    },
    [3] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_sling", "acc_duffle", "acc_extmag_shotgun"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Bolt",
        Category = {"bolt_manual"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Trigger",
        Category = {"trigger_pump2", "trigger_manual"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Ammo",
        Category = {"ammo_shotgun"},
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

addsound("tacint_870.Insertshell", path .. "m3_insertshell.wav")
addsound("tacint_870.Movement", path .. "movement-1.wav")
addsound("tacint_870.PumpBack", path .. "m3_pump.wav")