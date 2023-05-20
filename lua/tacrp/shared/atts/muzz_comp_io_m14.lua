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