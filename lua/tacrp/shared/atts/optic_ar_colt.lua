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