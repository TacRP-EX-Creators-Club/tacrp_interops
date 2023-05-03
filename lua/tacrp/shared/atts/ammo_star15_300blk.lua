ATT.PrintName = ".300 BLK"
ATT.FullName = ".300 AAC Blackout Rounds"
ATT.Icon = Material("entities/tacrp_att_ammo_star15_300blk.png", "mips smooth")
ATT.Description = "Modification to load lower velocity bullets with better CQB potential."
ATT.Pros = {"Damage"}
ATT.Cons = {"Range", "Spread", "Muzzle Velocity"}

ATT.Category = "ammo_star15"
ATT.SortOrder = 0

ATT.InstalledElements = {"300blk"}

ATT.Mult_Damage_Max = 1.175
ATT.Add_Damage_Min = 1
ATT.Mult_Range_Min = 0.5
ATT.Mult_Range_Max = 0.8
ATT.Mult_MuzzleVelocity = 0.8
ATT.Add_Spread = 0.0007
ATT.Mult_RecoilSpreadPenalty = 1.05

-- forgive me for not doing dist sounds
ATT.Override_Sound_Shoot = "^tacint_extras/star15/fire-03.ogg"
ATT.Override_Sound_Shoot_Silenced = "tacint_extras/star15/fire-300blk-supp.ogg"

--
-- ATT.Override_Sound_Shoot = "tacint_extras/star15/gfl_fire.wav"
-- ATT.Override_Sound_Shoot_Silenced = "tacint_extras/star15/gfl_fire_supp.wav"
-- ATT.Override_Pitch_Shoot = 95