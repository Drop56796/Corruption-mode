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
