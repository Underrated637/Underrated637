local args = {
    [1] = "Limited Egg",
    [2] = 1,
    [3] = {
        ["SamuraiOni"] = true,
        ["WingedOni"] = true,
        ["Oni"] = true
    }
}

local ModMenuFrame = Instance.new("ScreenGui")
ModMenuFrame.Name = "ModMenu"
ModMenuFrame.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 150, 0, 100)
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 2
Frame.BorderColor3 = Color3.new(1, 1, 1)
Frame.Parent = ModMenuFrame

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, 0, 0, 30)
TitleLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TitleLabel.TextColor3 = Color3.new(1, 1, 1)
TitleLabel.TextSize = 20
TitleLabel.Font = Enum.Font.SourceSansBold
TitleLabel.Text = "Limited Egg"
TitleLabel.Parent = Frame

local PurchaseButton = Instance.new("TextButton")
PurchaseButton.Size = UDim2.new(0, 100, 0, 30)
PurchaseButton.Position = UDim2.new(0.5, -50, 0.75, -15)
PurchaseButton.BackgroundColor3 = Color3.new(0, 0, 0)
PurchaseButton.TextColor3 = Color3.new(1, 1, 1)
PurchaseButton.TextSize = 16
PurchaseButton.Font = Enum.Font.SourceSansBold
PurchaseButton.Text = "Purchase Egg"
PurchaseButton.Parent = Frame
PurchaseButton.MouseButton1Click:Connect(function()
    game:GetService("ReplicatedStorage").PetSystem.PurchaseEgg:FireServer(unpack(args))
end)

local HideShowButton = Instance.new("TextButton")
HideShowButton.Size = UDim2.new(0, 100, 0, 30)
HideShowButton.Position = UDim2.new(0.5, -50, 0.9, -10)
HideShowButton.BackgroundColor3 = Color3.new(0, 0, 0)
HideShowButton.TextColor3 = Color3.new(1, 1, 1)
HideShowButton.TextSize = 16
HideShowButton.Font = Enum.Font.SourceSansBold
HideShowButton.Text = "Hide/Show"
HideShowButton.Parent = ModMenuFrame

HideShowButton.MouseButton1Click:Connect(function()
    if Frame.Visible then
        Frame.Visible = false
    else
        Frame.Visible = true
    end
end)
