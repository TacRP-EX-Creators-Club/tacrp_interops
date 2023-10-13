-- interops.lua

local ATT = {}

------------------------------
-- ammo_star15_300blk
------------------------------
ATT = {}

ATT.PrintName = ".300 BLK"
ATT.FullName = "ST AR-15 .300 AAC Blackout Mod Kit"
ATT.Icon = Material("entities/tacrp_att_ammo_star15_300blk.png", "mips smooth")
ATT.Description = "Modification to load lower velocity bullets with better CQB potential."
ATT.Pros = {"stat.damage_max"}
ATT.Cons = {"rating.range", "stat.muzzlevelocity", "att.procon.armor"}

ATT.Category = "ammo_star15"
ATT.SortOrder = 0

ATT.InstalledElements = {"300blk"}

ATT.Mult_Damage_Max = 1.2
ATT.Mult_Range_Min = 0.5
ATT.Mult_Range_Max = 0.75
ATT.Mult_MuzzleVelocity = 0.8
ATT.Add_Spread = 0.0007
ATT.Mult_RecoilSpreadPenalty = 1.1

ATT.Mult_Penetration = 0.75
ATT.Add_ArmorPenetration = -0.15
ATT.Mult_ArmorBonus = 0.5

-- forgive me for fudging the dist sounds
ATT.Override_Sound_Shoot = "^tacint_extras/star15/fire-03.ogg"
ATT.Override_Sound_Shoot_Silenced = "tacint_extras/star15/fire_300blk-supp.ogg"

ATT.Override_DropMagazineModel = "models/weapons/tacint_extras/magazines/star15_pmag.mdl"
ATT.Override_DropMagazineImpact = "plastic"

TacRP.LoadAtt(ATT, "ammo_star15_300blk")

------------------------------
-- ammo_star15_50beo
------------------------------
ATT = {}

ATT.PrintName = ".50 BEO"
ATT.FullName = "ST AR-15 .50 Beowulf Mod Kit"
ATT.Icon = Material("entities/tacrp_att_ammo_star15_50beo.png", "mips smooth")
ATT.Description = "Modification to load low capacity, high power magnum rounds."
ATT.Pros = {"rating.lethality"}
ATT.Cons = {"rating.range", "rating.control", "att.procon.armor"}

ATT.Category = "ammo_star15"
ATT.SortOrder = 0.5

ATT.InstalledElements = {"50beo"}

ATT.Mult_Damage_Max = 2
ATT.Mult_Damage_Min = 1.5
ATT.Mult_Range_Min = 0.75
ATT.Mult_Range_Max = 0.5

ATT.Mult_Penetration = 0.25
ATT.Add_ArmorPenetration = -0.1
ATT.Mult_ArmorBonus = 0.75

ATT.Mult_RPM = 0.55
ATT.Mult_ClipSize = 1 / 3

ATT.Add_RecoilKick = 4
ATT.Mult_RecoilSpreadPenalty = 1.75
ATT.Add_RecoilResetTime = 0.075
ATT.Mult_MuzzleVelocity = 0.6
ATT.Add_RecoilPerShot = 0.6

ATT.Mult_ShootTimeMult = 1.5

ATT.Override_Sound_Shoot = "^tacint_extras/star15/fire_beo.ogg"
ATT.Override_Sound_Shoot_Silenced = "tacint_extras/star15/fire_beo-supp.ogg"

TacRP.LoadAtt(ATT, "ammo_star15_50beo")

------------------------------
-- bolt_af2011_alt
------------------------------
ATT = {}

ATT.PrintName = "Alternating"
ATT.FullName = "AF2011-A1 Alternating Bolt"
ATT.Icon = Material("entities/tacrp_att_bolt_heavy.png", "mips smooth")
ATT.Description = "Malicious interpretation of the concept of \"double-stacked magazines\"."
ATT.Pros = {"stat.spread", "rating.control", "stat.rpm"}
ATT.Cons = {"att.procon.onebullet", "stat.recoilmaximum"}

ATT.Category = "bolt_af2011"

ATT.SortOrder = 0

-- ATT.Override_Firemodes = {1, -2}
-- ATT.Override_Firemodes_Priority = 0.5
-- ATT.Override_RunawayBurst = true
-- ATT.Override_RunawayBurst_Priority = 0.5
-- ATT.Override_PostBurstDelay = 0.1
-- ATT.Override_PostBurstDelay_Priority = 0.5

-- ATT.Func_RPMMultBurst = function(wep, modifiers)
--     if wep:GetFiremodeAmount() == 2 and wep:GetValue("Firemodes")[2] == -2  then
--         modifiers.set = 1.5
--         modifiers.prio = 10
--     end
-- end

ATT.Override_AmmoPerShot = 1
ATT.Override_Num = 1

ATT.Mult_RPM = 1.75

ATT.Add_RecoilStability = 0.3
ATT.Mult_RecoilKick = 0.4
ATT.Mult_RecoilSpreadPenalty = 0.7
ATT.Mult_Spread = 0.75

ATT.Add_RecoilMaximum = 2

ATT.Override_Sound_Shoot = "^tacint_shark/af2011/af2011a0-1.wav"
ATT.Add_Pitch_Shoot = 0
ATT.Override_EffectsDoubled = false

TacRP.LoadAtt(ATT, "bolt_af2011_alt")

------------------------------
-- muzz_comp_io_m14
------------------------------
ATT = {}

ATT.PrintName = "att.muzz_pistol_comp.name"
ATT.Icon = Material("entities/tacrp_att_muzz_pistol_comp.png", "mips smooth")
ATT.Description = "Muzzle device which reduces recoil impact."
ATT.Pros = {"stat.recoil", "stat.muzzlevelocity"}
ATT.Cons = {"stat.rpm"}

ATT.Category = "comp_m14"
ATT.InvAtt = "muzz_pistol_comp"
ATT.SortOrder = 1

ATT.Mult_RecoilKick = 0.5
ATT.Mult_RecoilSpreadPenalty = 0.8
ATT.Mult_RPM = 450 / 700
ATT.Mult_MuzzleVelocity = 1.15

ATT.InstalledElements = {"muzzle"}

TacRP.LoadAtt(ATT, "muzz_comp_io_m14")

------------------------------
-- muzz_tec9_shroud
------------------------------
ATT = {}

ATT.PrintName = "Shroud"
ATT.FullName = "TEC-9 Barrel Shroud"
ATT.Icon = Material("entities/tacrp_att_muzz_tec9_shroud.png", "mips smooth")
ATT.Description = "Barrel extension improving performance at range."
ATT.Pros = {"rating.precision", "rating.control", "rating.range"}
ATT.Cons = {"stat.rpm", "rating.maneuvering"}

ATT.Category = "muzz_tec9"

ATT.Mult_RPM = 750 / 1000
ATT.Mult_Spread = 0.6
ATT.Mult_RecoilSpreadPenalty = 0.7
ATT.Mult_Range_Max = 2
ATT.Mult_Range_Min = 2
ATT.Mult_RecoilKick = 0.85
ATT.Mult_RecoilVisualKick = 0.75
ATT.Add_HipFireSpreadPenalty = 0.0075
ATT.Add_FreeAimMaxAngle = 0.5

ATT.InstalledElements = {"shroud"}
ATT.Override_QCA_Muzzle = 3
ATT.Add_Pitch_Shoot = -5

TacRP.LoadAtt(ATT, "muzz_tec9_shroud")

------------------------------
-- optic_ak_pso1
------------------------------
ATT = {}

ATT.PrintName = "PSO-1"
ATT.Icon = Material("entities/tacrp_att_optic_pso1.png", "mips smooth")
ATT.Description = "Russian dovetail scope with medium-long range magnification."
ATT.Pros = {"att.zoom.6"}

ATT.Category = "optic_ak"

ATT.SortOrder = 6

ATT.Override_Scope = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/pso1.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 6
ATT.Override_ScopeOverlaySize = 0.9
ATT.Override_ScopeHideWeapon = true

ATT.SightPos = Vector(0, -17, 1.75)
ATT.SightAng = Angle(0, 0, 0)

ATT.Model = "models/weapons/tacint_extras/addons/pso1.mdl"
ATT.Scale = 1.25
ATT.ModelOffset = Vector(-1.5, 0, -0.75)

ATT.InstalledElements = {"akmount"}

TacRP.LoadAtt(ATT, "optic_ak_pso1")

------------------------------
-- optic_ar_colt
------------------------------
ATT = {}

ATT.PrintName = "Colt 3x20"
ATT.FullName = "Colt 3x20 Rifle Scope"
ATT.Icon = Material("entities/tacrp_att_optic_m16a2_colt.png", "mips smooth")
ATT.Description = "Low power optical scope mounted on AR pattern carry handles."
ATT.Pros = {"att.zoom.3"}

ATT.Category = "optic_ar"

ATT.SortOrder = 3

ATT.Override_Scope = true
ATT.Override_ScopeHideWeapon = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/coltscope.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 3
ATT.Override_ScopeOverlaySize = 0.85

ATT.Model = "models/weapons/tacint_extras/addons/coltscope.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)

ATT.InstalledElements = {"chmount"}

TacRP.LoadAtt(ATT, "optic_ar_colt")

------------------------------
-- optic_m16a2_colt
------------------------------
ATT = {}

ATT.PrintName = "Colt 3x20"
ATT.FullName = "Colt 3x20 Rifle Scope"
ATT.Icon = Material("entities/tacrp_att_optic_m16a2_colt.png", "mips smooth")
ATT.Description = "Low power optical scope mounted on AR pattern carry handles."
ATT.Pros = {"att.zoom.3"}

ATT.Category = "optic_m16a2"
ATT.InvAtt = "optic_ar_colt"

ATT.SortOrder = 3

ATT.Override_Scope = true
ATT.Override_ScopeHideWeapon = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/coltscope.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 3
ATT.Override_ScopeOverlaySize = 0.85

ATT.InstalledElements = {"coltscope"}

TacRP.LoadAtt(ATT, "optic_m16a2_colt")

------------------------------
-- optic_pso1
------------------------------
ATT = {}

ATT.PrintName = "PSO-1"
ATT.Icon = Material("entities/tacrp_att_optic_pso1.png", "mips smooth")
ATT.Description = "Russian scope with medium-long range magnification."
ATT.Pros = {"att.zoom.6"}

ATT.Category = "optic_pso1"
ATT.InvAtt = "optic_ak_pso1"

ATT.SortOrder = 6

ATT.Override_Scope = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/pso1.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 6
ATT.Override_ScopeOverlaySize = 0.9
ATT.Override_ScopeHideWeapon = true

ATT.InstalledElements = {"pso1"}

TacRP.LoadAtt(ATT, "optic_pso1")

------------------------------
-- optic_xm8_4x
------------------------------
ATT = {}

ATT.PrintName = "4x"
ATT.FullName = "XM8 Integrated Scope (4x)"
ATT.Icon = Material("entities/tacrp_att_optic_acog.png", "mips smooth")
ATT.Description = "Medium range zoom setting with ACOG reticle."
ATT.Pros = {"att.zoom.4"}

ATT.Category = "optic_xm8"

ATT.SortOrder = 4

ATT.Override_Scope = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/acog.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 4
ATT.Override_ScopeOverlaySize = 0.85

ATT.Free = true

TacRP.LoadAtt(ATT, "optic_xm8_4x")

------------------------------
-- optic_xm8_6x
------------------------------
ATT = {}

ATT.PrintName = "6x"
ATT.FullName = "XM8 Integrated Scope (6x)"
ATT.Icon = Material("entities/tacrp_att_optic_acog.png", "mips smooth")
ATT.Description = "Medium-long range zoom setting with Short Dot reticle."
ATT.Pros = {"att.zoom.6"}

ATT.Category = "optic_xm8"

ATT.SortOrder = 6

ATT.Override_Scope = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/shortdot.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 6
ATT.Override_ScopeOverlaySize = 1

ATT.Free = true

TacRP.LoadAtt(ATT, "optic_xm8_6x")

------------------------------
-- optic_xm8_8x
------------------------------
ATT = {}

ATT.PrintName = "8x"
ATT.FullName = "XM8 Integrated Scope (8x)"
ATT.Icon = Material("entities/tacrp_att_optic_acog.png", "mips smooth")
ATT.Description = "Long range zoom setting with sniper reticle."
ATT.Pros = {"att.zoom.8"}

ATT.Category = "optic_xm8"

ATT.SortOrder = 8

ATT.Override_Scope = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/sniper.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 8
ATT.Override_ScopeOverlaySize = 0.8

ATT.Free = true

TacRP.LoadAtt(ATT, "optic_xm8_8x")

------------------------------
-- trigger_vp70_auto
------------------------------
ATT = {}

ATT.PrintName = "Automatic"
ATT.FullName = "VP-70 Auto Sear Stock"
ATT.Icon = Material("entities/tacrp_att_trigger_vp70_auto.png", "smooth")
ATT.Description = "The engineers at H&K are frothing at their mouths as we speak."
ATT.Pros = {"att.procon.auto"}
ATT.Cons = {"stat.rpm", "rating.control"}

ATT.Free = false

ATT.Category = "trigger_vp70"

ATT.SortOrder = 0.5

ATT.Override_Firemodes = {2, 1}
-- ATT.Mult_RPM = 0.778
-- ATT.Override_RPM = 1200

ATT.Add_RecoilVisualKick = 1
ATT.Add_RecoilKick = 3

ATT.Mult_ShootingSpeedMult = 0.85
ATT.Add_HipFireSpreadPenalty = 0.005
ATT.Add_RecoilMaximum = 3

TacRP.LoadAtt(ATT, "trigger_vp70_auto")

------------------------------
-- trigger_vp70_semi
------------------------------
ATT = {}

ATT.PrintName = "Stockless"
ATT.Icon = Material("entities/tacrp_att_trigger_vp70_semi.png", "smooth")
ATT.Description = "Removes burst fire capability, improving handling and mobility."
ATT.Pros = {"stat.damage", "rating.handling", "rating.mobility"}
ATT.Cons = {"att.procon.semi", "rating.stability"}

ATT.Free = true

ATT.Category = "trigger_vp70"

ATT.SortOrder = 0

ATT.Add_Damage_Max = 3
ATT.Add_Damage_Min = 3

ATT.Mult_ReloadTimeMult = 0.9

ATT.Override_Firemodes = {1}
ATT.Mult_RPM = 0.667
-- ATT.Override_RPM = 600

ATT.Add_RecoilKick = 2
ATT.Add_SprintToFireTime = -0.05
ATT.Add_AimDownSightsTime = -0.02
ATT.Mult_MoveSpeedMult = 1.1
ATT.Add_SightedSpeedMult = 0.15
ATT.Add_ShootingSpeedMult = 0.25
ATT.Add_ReloadTimeMult = -0.15
ATT.Add_HipFireSpreadPenalty = -0.005

ATT.Add_RecoilSpreadPenalty = -0.0035

ATT.Add_ScopedSway = 0.3
ATT.Add_Sway = -0.15
ATT.Add_FreeAimMaxAngle = -1.5

ATT.InstalledElements = {"foldstock"}

TacRP.LoadAtt(ATT, "trigger_vp70_semi")

