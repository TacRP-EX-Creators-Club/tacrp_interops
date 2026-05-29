local tacrp_wsid = 3734712166
hook.Add("InitPostEntity", "tacrp_check", function()
    timer.Simple(3, function()
        -- Either Workshop mounted OR exists as legacy addon. Ignore dedicated servers
        -- Legacy addon check technically won't work if tacrp is renamed, but eh
        if not game.IsDedicated() and not steamworks.ShouldMountAddon(tacrp_wsid) and not file.IsDir("addons/tacrp", "MOD") then
            chat.AddText(color_white, "You have one or more TacRP expansions installed, but not TacRP Base! (Are you using an unofficial version?)")
            chat.AddText(color_white, "Subscribe to the new official upload: https://steamcommunity.com/sharedfiles/filedetails/?id=" .. tostring(tacrp_wsid))
        end
    end)
end)