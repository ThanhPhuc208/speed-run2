-- LocalScript
-- Đặt trong StarterPlayerScripts

local Lighting = game:GetService("Lighting")

-- Bloom
local bloom = Instance.new("BloomEffect")
bloom.Intensity = 1.5
bloom.Size = 56
bloom.Threshold = 1
bloom.Parent = Lighting

-- Color Correction
local color = Instance.new("ColorCorrectionEffect")
color.Brightness = 0.05
color.Contrast = 0.15
color.Saturation = 0.2
color.Parent = Lighting

-- Sun Rays
local sun = Instance.new("SunRaysEffect")
sun.Intensity = 0.1
sun.Spread = 1
sun.Parent = Lighting

-- Atmosphere
local atmosphere = Instance.new("Atmosphere")
atmosphere.Density = 0.3
atmosphere.Offset = 0.25
atmosphere.Color = Color3.fromRGB(199, 199, 199)
atmosphere.Decay = Color3.fromRGB(106, 112, 125)
atmosphere.Glare = 0.1
atmosphere.Haze = 1
atmosphere.Parent = Lighting

-- Lighting settings
Lighting.GlobalShadows = true
Lighting.Brightness = 3
Lighting.EnvironmentDiffuseScale = 1
Lighting.EnvironmentSpecularScale = 1
Lighting.Technology = Enum.Technology.Future
