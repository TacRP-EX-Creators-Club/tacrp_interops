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