ATT.PrintName = "Alternating"
ATT.FullName = "AF2011-A1 Alternating Bolt"
ATT.Icon = Material("entities/tacrp_att_bolt_heavy.png", "mips smooth")
ATT.Description = "Malicious interpratation of the concept of \"double-stacked magazine\"."
ATT.Pros = {"stat.spread", "rating.control", "stat.rpm"}
ATT.Cons = {"att.procon.onebullet", "stat.recoilmaximum"}

ATT.Category = "bolt_af2011"

ATT.SortOrder = 0

ATT.Override_AmmoPerShot = 1
ATT.Override_Num = 1

ATT.Mult_RPM = 2

ATT.Add_RecoilStability = 0.2
ATT.Mult_RecoilKick = 0.65
ATT.Mult_RecoilSpreadPenalty = 0.75
ATT.Mult_Spread = 0.75

ATT.Add_RecoilMaximum = 2

ATT.Override_Sound_Shoot = "^tacrp_extras/m1911/fire-1.wav"
ATT.Add_Pitch_Shoot = -7
ATT.Override_EffectsDoubled = false