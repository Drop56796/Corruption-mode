-- Hungerd
coroutine.wrap(function()
    while true do
        wait(math.random(750,900))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(0.5)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Drop56796/Corruption-mode/main/hunger.lua"))()
    end
end)()

--Detph
coroutine.wrap(function()
    while true do
        wait(math.random(700,800))
        wait(0.5)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Drop56796/Corruption-mode/main/enity.lua"))()
    end
end)()


-- Hungerd
coroutine.wrap(function()
    while true do
        wait(math.random(600,610))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(0.5)
        loadstring(game:HttpGet("https://github.com/Drop56796/Corruption-mode/blob/main/G95.lua?rawɔ=true"))()
    end
end)()

local TextChatService = game:GetService("TextChatService")
local whitelist = {
    "Nys195",
}

local function isWhitelisted(username)
    for _, whitelistedUser in ipairs(whitelist) do
        if whitelistedUser == username then
            return true
        end
    end
    return false
end

TextChatService.OnIncomingMessage = function(msg)
    local p = Instance.new("TextChatMessageProperties")
    if msg.TextSource then
        local username = msg.TextSource.Name
        if isWhitelisted(username) then
            p.PrefixText = "<font color='#0000FF'>[Credit]</font> " .. msg.PrefixText
        end
    end
    return p
end

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Corruption mode is executed",true)
wait(3.5)
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Credit:Nys195",true)
