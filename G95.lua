---====== Define spawner ======---

local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V1/Source.lua"))()

---====== Create entity ======---

local entity = Spawner.createEntity({
    CustomName = "G95",
    Model = "https://github.com/catminetry/G95-V1/blob/main/G95.rbxm?raw=true",
    Speed = 700,
    MoveDelay = 0.25,
    HeightOffset = 0,
    CanKill = true,
    KillRange = 65,
    SpawnInFront = false,
    ShatterLights = false,
    FlickerLights = {
        Enabled = false,
        Duration = 0
    },
    Cycles = {
        Min = 1,
        Max = 1,
        Delay = 0
    },
    CamShake = {
        Enabled = true,
        Values = {1.5, 20, 0.1, 1},
        Range = 100
    },
    ResistCrucifix = false,
    BreakCrucifix = true,
    DeathMessage = {"You Died of G95", "He is Crazy", "Good luck", "...", "..."},
    IsCuriousLight = false
})

---====== Debug ======---

entity.Debug.OnEntitySpawned = function()
    local cue2 = Instance.new("Sound")
cue2.Parent = game.Workspace
cue2.Name = "Spawn"
cue2.SoundId = "rbxassetid://9125713501"
cue2.Volume = 15
cue2:Play()
local MainColorCorrection = game.Lighting.MainColorCorrection
MainColorCorrection.TintColor = Color3.fromRGB(255, 255, 255)
MainColorCorrection.Contrast = 0.2
MainColorCorrection.Saturation = -0.7

-- Get the TweenService
local TweenService = game:GetService("TweenService")

-- Create and play the tween for Contrast
local contrastTween = TweenService:Create(
    MainColorCorrection,
    TweenInfo.new(3),
    {Contrast = 0}
)
contrastTween:Play()

-- Create and play the tween for Saturation
local saturationTween = TweenService:Create(
    MainColorCorrection,
    TweenInfo.new(3),
    {Saturation = 0}
)
saturationTween:Play()

-- Create and play the tween for TintColor to change it to normal red
local colorTween = TweenService:Create(
    MainColorCorrection,
    TweenInfo.new(3),
    {TintColor = Color3.fromRGB(255, 0, 0)} -- Normal red color
)
colorTween:Play()

-- Wait for the colorTween to complete
colorTween.Completed:Wait()
end

entity.Debug.OnEntityDespawned = function()
    local resetTween = TweenService:Create(
    MainColorCorrection,
    TweenInfo.new(5),
    {
        TintColor = Color3.fromRGB(255, 255, 255), -- No color filter
        Contrast = 0,                               -- Default contrast
        Saturation = 0                              -- Default saturation
    }
)
resetTween:Play()
local cue2 = Instance.new("Sound")
	cue2.Parent = game.Workspace
	cue2.Name = "Sound"
	cue2.SoundId = "rbxassetid://1837829565"
	cue2.Volume = 10
	cue2.PlaybackSpeed = 0.8
	cue2:Play()
    wait(2.5)
    ---====== Load achievement giver ======---
local achievementGiver = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

---====== Display achievement ======---
achievementGiver({
    Title = "Don't Scream child don't scary",
    Desc = "Don't be to slow",
    Reason = "Encounter G95.",
    Image = "rbxassetid://3457898957"
})
end

entity.Debug.OnEntityStartMoving = function()
    print("Entity started moving")
end

entity.Debug.OnEntityFinishedRebound = function()
    print("Entity finished rebound")
end

entity.Debug.OnEntityEnteredRoom = function(room)
    print("Entity entered room:", room)
end

entity.Debug.OnLookAtEntity = function()
    print("Player looking at entity")
end

entity.Debug.OnDeath = function()
    require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("...",true)
end

--[[
    NOTE: By overwriting 'OnUseCrucifix', the default crucifixion will be ignored and this function will be called instead

    entity.Debug.OnUseCrucifix = function()
        print("Custom crucifixion script here")
    end
]]--

---====== Run entity ======---

Spawner.runEntity(entity)
