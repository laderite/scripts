local loader = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local textholder = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local status = Instance.new("TextLabel")
local bars = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local green = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")

--Properties:

loader.Name = "loader"
loader.Parent = game.CoreGui
loader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = loader
main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
main.Position = UDim2.new(0.310740352, 0, 0.361276269, 0)
main.Size = UDim2.new(0, 363, 0, 152)

UICorner.Parent = main

textholder.Name = "text holder"
textholder.Parent = main
textholder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textholder.BackgroundTransparency = 1.000
textholder.Position = UDim2.new(0, 0, 0.065476194, 0)
textholder.Size = UDim2.new(0, 300, 0, 39)

TextLabel.Parent = textholder
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0566666648, 0, 0.589743555, 0)
TextLabel.Size = UDim2.new(0, 203, 0, 31)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "ZEN X"
TextLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
TextLabel.TextSize = 29.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(0, 255, 0)

TextLabel_2.Parent = textholder
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.426666677, 0, 0.589743555, 0)
TextLabel_2.Size = UDim2.new(0, 198, 0, 31)
TextLabel_2.Font = Enum.Font.GothamBold
TextLabel_2.Text = "LOADER"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 29.000

status.Name = "status"
status.Parent = textholder
status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
status.BackgroundTransparency = 1.000
status.Position = UDim2.new(-0.00333333341, 0, 2.24672365, 0)
status.Size = UDim2.new(0, 363, 0, 35)
status.Font = Enum.Font.GothamSemibold
status.Text = "loading functions.."
status.TextColor3 = Color3.fromRGB(255, 255, 255)
status.TextSize = 14.000

bars.Name = "bars"
bars.Parent = main
bars.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
bars.Position = UDim2.new(0.175403237, 0, 0.497751325, 0)
bars.Size = UDim2.new(0, 235, 0, 15)

UICorner_2.Parent = bars

green.Name = "green"
green.Parent = bars
green.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
green.Size = UDim2.new(0, 235, 0, 15)

UICorner_3.Parent = green
game.CoreGui:WaitForChild('loader'):WaitForChild('main'):WaitForChild('text holder'):WaitForChild('status').Text = "Welcome!"
game.CoreGui:WaitForChild('loader'):WaitForChild('main'):WaitForChild('bars'):WaitForChild('green').Size = UDim2.new(0,0,0,0)
