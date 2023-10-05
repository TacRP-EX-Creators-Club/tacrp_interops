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