local module = {}

-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- Local Player
local player = Players.LocalPlayer
local Char = player.Character or player.CharacterAdded:Wait()
local Root = Char:WaitForChild("HumanoidRootPart")

function module:MoveToPosition(Input)
    local distance = (Input - Root.Position).Magnitude
    local direction = (Input - Root.Position).Unit

    player:Move(direction)
end

return module
