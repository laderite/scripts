repeat wait() until game:IsLoaded()
wait(math.random(5,15))
coroutine.resume(coroutine.create(function()
if workspace:FindFirstChild('W1') then
    while wait(1) do
        game:GetService("ReplicatedStorage").Events.worldBoss:FireServer()
    end
end
end))
local player = game.Players.LocalPlayer
function lookAt(chr,target) -- found this func somewhere
    if chr.PrimaryPart then 
        local chrPos=chr.PrimaryPart.Position 
        local tPos=target.Position 
        local newCF=CFrame.new(chrPos,tPos) 
        chr:SetPrimaryPartCFrame(newCF)
    end
end
local VirtualInputManager = game:GetService('VirtualInputManager')
local promptOverlay = game.CoreGui:FindFirstChild("RobloxPromptGui"):FindFirstChild("promptOverlay")
promptOverlay.DescendantAdded:Connect(function(Err)
    if Err.Name == "ErrorTitle" then
        if string.find(Err.Text, "Disconnected") or string.find(Err.Text, "Teleport Failed") then
            local player = game.Players.LocalPlayer
            player:Kick("\nRejoining...")
            wait()
            game:GetService("TeleportService"):Teleport("2990100290", player)
        end
    end
end)

coroutine.resume(coroutine.create(function()
    while task.wait(1) do
        if (doautoskill) then
            VirtualInputManager:SendKeyEvent(true, "Q", false, game)
            task.wait()
            VirtualInputManager:SendKeyEvent(false, "Q", false, game)
        end
        task.wait()
        if (doautoskill) then
            VirtualInputManager:SendKeyEvent(true, "E", false, game)
            task.wait()
            VirtualInputManager:SendKeyEvent(false, "E", false, game)
        end
        task.wait()
        if (doautoskill) then
            VirtualInputManager:SendKeyEvent(true, "R", false, game)
            task.wait()
            VirtualInputManager:SendKeyEvent(false, "R", false, game)
        end
    end
end))

coroutine.resume(coroutine.create(function()
    while wait(0.1) do
        local args = {[1] = "Open",[2] = "666"}
        game:GetService("ReplicatedStorage").Events.inventory:FireServer(unpack(args))
        local args = {[1] = "Open",[2] = "6666"}
        game:GetService("ReplicatedStorage").Events.inventory:FireServer(unpack(args))
        local args = {[1] = "Open",[2] = "66666"}
        game:GetService("ReplicatedStorage").Events.inventory:FireServer(unpack(args))                                
    end
end))

itemss = {
    "Mine Key",
    "Ward Scroll",
    "Ultra Health Potion",
    "Ultra Attack Potion",
}

pcall(function()
    function sell()
        if getgenv().settings['autosell']['enabled'] then
            for _,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.ScrollingFrame:GetChildren()) do
                if v:IsA('TextButton') and v:FindFirstChild('ItemName').Value ~= "" then
                    local name = v.ItemName.Value
                    local ID = v.ID.Value
                    
                    if table.find(itemss, name) then
                        
                        local args = {[1] = "Sell",[2] = {[1] = {[1] = ID}}}
                        game:GetService("ReplicatedStorage").Events.inventory:FireServer(unpack(args))
                    end
                end
            end
        end
    end
    sell()
end)

game.Workspace.Mobs.ChildRemoved:connect(function(v)
    if v.Name == "Destroyer" then
        wait(10)
        player:Kick("\nRejoining...")
        wait()
        game:GetService("TeleportService"):Teleport("2990100290", player)
    end
end)

coroutine.resume(coroutine.create(function(v)
    while wait(1) do
        for i, Err in pairs(game.CoreGui:FindFirstChild("RobloxPromptGui"):FindFirstChild("promptOverlay"):GetDescendants()) do
            if Err.Name == "ErrorTitle" then
                if string.find(Err.Text, "Disconnected") or string.find(Err.Text, "Teleport Failed") then
                    local player = game.Players.LocalPlayer
                    player:Kick("\nRejoining...")
                    wait()
                    game:GetService("TeleportService"):Teleport("2990100290", player)
                end
            end
        end
    end
end))
coroutine.resume(coroutine.create(function(v)
    doautoskill = true  
    while task.wait() do
        pcall(function()
            player.Character.HumanoidRootPart.CFrame = workspace.Mobs.Destroyer.HumanoidRootPart.CFrame
        end)
    end
end))
