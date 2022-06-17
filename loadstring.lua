local betterisfile = function(file)
	local suc, res = pcall(function() return readfile(file) end)
	return suc and res ~= nil
end

if not shared.HorizonDeveloper and betterisfile("Horizon/scripts/6872274481.lua") then
    warn("[Horizon] Please contact engo#0320 on discord, Error: NVLN Detection!")
    return pcall(game.Players.LocalPlayer.Kick, game.Players.LocalPlayer, "Please contact engo#0320 on discord, Error: NVLN Detection!")
end

if shared.HorizonDeveloper then 
    loadfile("Horizon/Initiate.lua")()
    return
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/2l2cgit/Horizon/main/Initiate.lua"))()