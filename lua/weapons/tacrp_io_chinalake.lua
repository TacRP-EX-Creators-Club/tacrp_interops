SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "China Lake Launcher"
SWEP.Category = "Tactical RP (Special)"

SWEP.SubCatTier = "9Special"
SWEP.SubCatType = "6Launcher"

SWEP.Description = "Heavy pump action grenade launcher with high muzzle velocity but poor handling."
SWEP.Description_Quote = "Only 59 of these ever existed. Where'd you get this one?"

SWEP.Trivia_Caliber = "40x46mm"
SWEP.Trivia_Manufacturer = "NAWS China Lake"
SWEP.Trivia_Year = "1968"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = [[
Assets: Counter Strike: Online 2
Animation: Tactical Intervention
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_chinalake.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_chinalake.mdl"

SWEP.NoRanger = true

SWEP.Slot = 2
SWEP.SlotAlt = 4

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        MoveSpeedMult = 0.9,
        ShootingSpeedMult = 0.6,
        SightedSpeedMult = 0.75,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 0.85,
    },
    [TacRP.BALANCE_TTT] = {
        ReloadTimeMult = 1.25,

        MoveSpeedMult = 0.9,
        ShootingSpeedMult = 0.6,
        SightedSpeedMult = 0.5,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 0.5,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        HipFireSpreadPenalty = 0.04,
        ShootingSpeedMult = 0.6
    }
}

// "ballistics"

SWEP.ShootEnt = "tacrp_proj_40mm_he"
SWEP.ShootEntForce = 7000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 1,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
    [HITGROUP_GEAR] = 0.9
}


SWEP.Damage_Max = 200 // just to fool the ratings
SWEP.Damage_Min = 200
SWEP.Range_Max = 5000
SWEP.Range_Min = 2000


SWEP.MuzzleVelocity = 9000

SWEP.Num = 1

// misc. shooting

SWEP.Firemode = 1

SWEP.FiremodeName = "Single-Shot" // only used externally for firemode name distinction

SWEP.RPM = 42

SWEP.Spread = 0.01

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 2
SWEP.RecoilResetTime = 0.2 // time after you stop shooting for recoil to start dissipating
SWEP.RecoilDissipationRate = 2
SWEP.RecoilFirstShotMult = 1 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 5
SWEP.RecoilVisualShake = 2

SWEP.RecoilKick = 15

SWEP.RecoilSpreadPenalty = 0
SWEP.HipFireSpreadPenalty = 0.075
SWEP.PeekPenaltyFraction = 0.15

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.85
SWEP.ShootingSpeedMult = 0.5
SWEP.SightedSpeedMult = 0.5

SWEP.ReloadSpeedMult = 0.25

SWEP.AimDownSightsTime = 0.42
SWEP.SprintToFireTime = 0.45

SWEP.Sway = 1.5
SWEP.ScopedSway = 0.3

SWEP.FreeAimMaxAngle = 8

// hold types

SWEP.HoldType = "shotgun"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -5.5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(4, -2, -4)

SWEP.BlindFireSuicideAng = Angle(0, 135, 0)
SWEP.BlindFireSuicidePos = Vector(-3, 25, -19)

SWEP.SprintAng = Angle(40, -15, 0)
SWEP.SprintPos = Vector(4, 0, -4)

SWEP.SightAng = Angle(-0.7, 2, 2)
SWEP.SightPos = Vector(-3.8, -3, -5.5)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK2
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// melee

SWEP.CanMeleeAttack = true

// reload

SWEP.ClipSize = 4
SWEP.Ammo = "smg1_grenade"
SWEP.ShotgunReload = true

SWEP.ReloadTimeMult = 1.55

// sounds

local path = "tacint_shark/chinalake/"

SWEP.Sound_Shoot = "^" .. path .. "chinalake-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2
SWEP.EjectEffect = 3
SWEP.EjectDelay = 0.5

hook.Add("TacRP_LoadShellEffects", "tacrp_io_chinalake", function(tbl)
    local i = table.insert(tbl, {
        Model = "models/tacint/shells/40mm_shell.mdl",
        Sounds = {
            "TacRP/shells/40mmshell_drop1.wav",
            "TacRP/shells/40mmshell_drop2.wav",
            "TacRP/shells/40mmshell_drop3.wav",
            "TacRP/shells/40mmshell_drop4.wav",
            "TacRP/shells/40mmshell_drop5.wav",
        }
    })
    local wep = weapons.GetStored("tacrp_io_chinalake")
    if wep then
        wep.EjectEffect = i
    end
end)

SWEP.MuzzleEffect = "muzzleflash_m79"

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "unholster",
    ["fire"] = {"shoot1", "shoot2"},
    ["blind_fire"] = {"blind_shoot1"},
    ["melee"] = {"melee1", "melee2"},
    ["reload"] = {"reload", "reload2"}
}

SWEP.DeployTimeMult = 3

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
    ["3gl"] = {
        BGs_VM = {
            {2, 1}
        },
    },
    ["buck"] = {
        BGs_VM = {
            {2, 2}
        },
    },
    ["heat"] = {
        BGs_VM = {
            {2, 3}
        },
    },
    ["lvg"] = {
        BGs_VM = {
            {2, 4}
        },
    },
    ["smoke"] = {
        BGs_VM = {
            {2, 5}
        },
    },
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Ammo",
        Category = "ammo_40mm",
        AttachSound = "TacRP/weapons/m320/shell_in-1.wav",
        DetachSound = "TacRP/weapons/m320/shell_out-1.wav",
    },
    [2] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_holster"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [3] = {
        PrintName = "Perk",
        Category = {"perk", "perk_shooting", "perk_reload", "perk_melee"},
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

addsound("tacint_chinalake.Insertshell", path .. "chinalake_insertshell.wav")
addsound("tacint_chinalake.Movement", path .. "chinalake_draw.wav")
addsound("tacint_chinalake.PumpBack", path .. "chinalake_pump.wav")

SWEP.AutoSpawnable = false