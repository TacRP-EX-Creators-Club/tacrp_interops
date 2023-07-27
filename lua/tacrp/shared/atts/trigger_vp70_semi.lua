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