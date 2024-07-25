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

