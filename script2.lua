local OrionLib = loadstring(game:HttpGet("https://githubusercontent.com"))()
local Window = OrionLib:MakeWindow({Name = "Admin Menu (ThanhPhuc)", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer

local speedValue = 16
local jumpValue = 50
local isGodMode = false
local isNoclip = false

RunService.Stepped:Connect(function()
    local character = player.Character
    if character then
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = speedValue
            humanoid.JumpPower = jumpValue
            if isGodMode then
                humanoid.MaxHealth = math.huge
                humanoid.Health = math.huge
            end
        end
        if isNoclip then
            for _, part in pairs(character:GetChildren()) do
                if part:IsA("BasePart") and part.CanCollide == true then
                    if part.Name ~= "UpperTorso" and part.Name ~= "LowerTorso" and part.Name ~= "HumanoidRootPart" then
                        part.CanCollide = false
                    end
                end
            end
        end
    end
end)

local Tab = Window:MakeTab({
	Name = "Chức năng chính",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddSlider({
	Name = "Tốc độ di chuyển",
	Min = 16,
	Max = 200,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		speedValue = Value
	end    
})

Tab:AddSlider({
	Name = "Độ nhảy cao",
	Min = 50,
	Max = 300,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Jump",
	Callback = function(Value)
		jumpValue = Value
	end    
})

Tab:AddToggle({
	Name = "Bật Bất Tử (God Mode)",
	Default = false,
	Callback = function(Value)
		isGodMode = Value
	end
})

Tab:AddToggle({
	Name = "Bật Xuyên Tường (Noclip)",
	Default = false,
	Callback = function(Value)
		isNoclip = Value
	end
})

OrionLib:Init()
