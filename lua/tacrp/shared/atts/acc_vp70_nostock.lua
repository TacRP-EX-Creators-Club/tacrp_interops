ATT.PrintName = "No Stock"
ATT.Icon = Material("entities/tacrp_att_acc_foldstock.png", "mips smooth")
ATT.Description = "Removes burst fire capability, improving handling and mobility."
ATT.Pros = {"Handling", "Mobility"}
ATT.Cons = {"Semi-automatic fire", "Sway"}

ATT.Free = true

ATT.Category = "acc_vp70_foldstock"

ATT.SortOrder = 0

ATT.Override_Firemodes = {1}
ATT.Override_RPM = 900

ATT.Add_RecoilKick = 1
ATT.Add_SprintToFireTime = -0.02
ATT.Add_AimDownSightsTime = -0.05
ATT.Mult_MoveSpeedMult = 1.1
ATT.Add_SightedSpeedMult = 0.15
ATT.Add_ShootingSpeedMult = 0.25
ATT.Add_ReloadTimeMult = -0.15
ATT.Add_HipFireSpreadPenalty = -0.005

ATT.Add_RecoilSpreadPenalty = -0.0035

ATT.Add_ScopedSway = 0.3
ATT.Add_Sway = -0.15

ATT.InstalledElements = {"foldstock"}