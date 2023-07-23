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