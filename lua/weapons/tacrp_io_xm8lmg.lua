SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "HK XM8 LMG"
SWEP.AbbrevName = "XM8 LMG"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "2Operator"
SWEP.SubCatType = "4Machine Gun"

SWEP.Description = "Experimental multi-purpose carbine in MG configuration. Light, high capacity and low recoil, but damage is poor.\nHas an adjustable integrated 2-8x scope."

SWEP.Trivia_Caliber = "5.56x45mm"
SWEP.Trivia_Manufacturer = "Heckler & Koch"
SWEP.Trivia_Year = "2003"

SWEP.Faction = TacRP.FACTION_COALITION
SWEP.Credits = [[
Model: End Of Days
Texture: Copkiller, Twinke Masta & Wangchung
Animation: Tactical Intervention
]]

SWEP.ViewModel = "models/weapons/tacint_extras/v_xm8lmg.mdl"
SWEP.WorldModel = "models/weapons/tacint_extras/w_xm8lmg.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 12,
        Damage_Min = 6,
        Range_Min = 750,
        Range_Max = 3000,
        RPM = 750,

        RecoilSpreadPenalty = 0.0009,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 3,
            [HITGROUP_CHEST] = 1.25,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.9,
            [HITGROUP_RIGHTARM] = 0.9,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 10,
        Damage_Min = 7,
        RPM = 700,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        RecoilSpreadPenalty = 0.001,
        HipFireSpreadPenalty = 0.01,
        RecoilMaximum = 14
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.MachineGun

// "ballistics"

SWEP.Damage_Max = 18
SWEP.Damage_Min = 10
SWEP.Range_Min = 1200
SWEP.Range_Max = 3000
SWEP.Penetration = 7 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.7

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 4.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.25,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
    [HITGROUP_GEAR] = 0.9
}

SWEP.MuzzleVelocity = 22000

// misc. shooting

SWEP.Firemodes = {
    2,
    1
}

SWEP.RPM = 750

SWEP.Spread = 0.008

SWEP.ShootTimeMult = 0.5

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 25
SWEP.RecoilResetTime = 0.1 // time after you stop shooting for recoil to start dissipating
SWEP.RecoilDissipationRate = 20
SWEP.RecoilFirstShotMult = 1 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 0.5
SWEP.RecoilKick = 2
SWEP.RecoilStability = 0.5

SWEP.RecoilSpreadPenalty = 0.0007
SWEP.HipFireSpreadPenalty = 0.035

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.9
SWEP.ShootingSpeedMult = 0.6
SWEP.SightedSpeedMult = 0.55

SWEP.ReloadSpeedMult = 0.25

SWEP.AimDownSightsTime = 0.42
SWEP.SprintToFireTime = 0.37

SWEP.Sway = 1
SWEP.ScopedSway = 0.225

SWEP.FreeAimMaxAngle = 4.5

SWEP.Bipod = true
SWEP.BipodRecoil = 0.65
SWEP.BipodKick = 0.3

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

SWEP.SprintAng = Angle(40, -15, 0)
SWEP.SprintPos = Vector(5, 0, -4)

SWEP.SightAng = Angle(0, 0, 0)
SWEP.SightPos = Vector(-4.03, -2.5, -4.1)

SWEP.CorrectivePos = Vector(0, 0, 0.1)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// scope

SWEP.Scope = true
SWEP.ScopeOverlay = Material("tacrp/scopes/scopeddot.png", "mips smooth") // Material("path/to/overlay")
SWEP.ScopeFOV = 90 / 2
SWEP.ScopeLevels = 1 // 2 = like CS:S
SWEP.ScopeHideWeapon = true

// reload

SWEP.ClipSize = 100
SWEP.Ammo = "smg1"

SWEP.ReloadTimeMult = 1.5
SWEP.DropMagazineModel = "models/weapons/tacint_extras/magazines/xm8lmg.mdl"
SWEP.DropMagazineImpact = "plastic"

SWEP.ReloadUpInTime = 1.4
SWEP.DropMagazineTime = 0.4

// sounds

local path = "tacrp/weapons/g36k/g36k_"
local path1 = "tacint_extras/xm8/"
SWEP.Sound_Shoot = "^" .. path1 .. "m249-1.wav"
SWEP.Sound_Shoot_Silenced = path .. "fire_silenced-1.wav"

SWEP.Vol_Shoot = 120
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
    ["melee"] = {"melee1", "melee2"}
}
SWEP.DeployTimeMult = 2.25

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
    ["tactical"] = {
        BGs_VM = {
            {2, 1}
        },
    },
	["bipod"] = {
        BGs_VM = {
            {3, 1}
        },
        BGs_WM = {
            {3, 1}
        }
    },
}


SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_xm8"},
        AttachSound = "tacrp/weapons/mp5/mp5_fire_select-1.wav",
        DetachSound = "tacrp/weapons/mp5/mp5_fire_select-3.wav",
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "ValveBiped.g36k_rootbone",
        WMBone = "ValveBiped.Bip01_R_Hand",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
		WMScale = 0.9,
        Pos_VM = Vector(-3.65, 0.3, 31),
        Pos_WM = Vector(35, 1.2, -4.7),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, -0, 0),
    },
    [3] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        Bone = "ValveBiped.g36k_rootbone",
        WMBone = "ValveBiped.Bip01_R_Hand",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        Pos_VM = Vector(-3.75, -0.8, 17),
        Pos_WM = Vector(20, 2, -5),
        Ang_VM = Angle(90, 0, -80),
        Ang_WM = Angle(-0, 0, 90),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_foldstock2", "acc_sling", "acc_duffle", "extendedbelt", "acc_bipod"},
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

addsound("tacint_xm8.remove_clip", path1 .. "magout.wav")
addsound("tacint_xm8.insert_clip", path1 .. "magin.wav")
addsound("tacint_xm8.bolt_action", path .. "bolt_action.wav")
addsound("tacint_xm8.fire_select", path .. "fire_selector.wav")
addsound("tacint_xm8.Buttstock_Back", path .. "buttstock_back.wav")