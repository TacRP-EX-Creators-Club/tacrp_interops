ATT.PrintName = "Automatic"
ATT.FullName = "VP-70 Auto Sear Stock"
ATT.Icon = Material("entities/tacrp_att_trigger_vp70_auto.png", "smooth")
ATT.Description = "The engineers at H&K are frothing at their mouths as we speak."
ATT.Pros = {"Automatic fire"}
ATT.Cons = {"Fire rate", "Recoil"}

ATT.Free = false

ATT.Category = "trigger_vp70"

ATT.SortOrder = 0.5

ATT.Override_Firemodes = {2}
ATT.Override_RPM = 1200

ATT.Add_RecoilVisualKick = 0.5
ATT.Add_RecoilKick = 0.5

ATT.Mult_ShootingSpeedMult = 0.85
ATT.Add_HipFireSpreadPenalty = 0.005

-- ATT.Add_RecoilSpreadPenalty = 0.005