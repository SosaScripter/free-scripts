--SUPERHERO
game.StarterGui:SetCore("SendNotification", {
    Title = "Sosa Scripter"; 
    Text = "<3 Sosa"; 
    Icon = "rbxthumb://type=Asset&id=9180015264&w=150&h=150";
    Duration = 5;
    })
    local sound = Instance.new("Sound", game.Workspace)
    sound.SoundId = "rbxassetid://578970639"
    wait(.3)
    sound:Play()
    local GN = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib(GN.." by Sosa", "BloodTheme")
    local FLY = loadstring(game:HttpGet("https://pastebin.com/raw/V1qmezST"))()
    local Main = Window:NewTab("Stats")
    local StatsSection = Main:NewSection("Scripts")
    local tp = Window:NewTab("Teleports")
    local tpSection = tp:NewSection("Teleports")
    local Misc = Window:NewTab("Misc")
    local Credits = Window:NewTab("Credits")
    local MiscSection = Misc:NewSection("Utilities")
    local CreditSection = Credits:NewSection("Discord: Owner of Sosa Scripts")
    local ToggleSection = Credits:NewSection("Toggle UI")
    local player = game.Players.LocalPlayer
    local Players = game:GetService("Players")
    local Player = Players.LocalPlayer
    local player = game.Players.LocalPlayer
    local mouse = player:GetMouse()
    local hit = mouse.Hit.p --vector3
    local pos = mouse.Hit.Position
    mouse.TargetFilter = workspace
    
    CreditSection:NewLabel("if someone else sold u this script lemme know!")
        CreditSection:NewLabel("https://discord.gg/3Hb5YUe6s2")
        CreditSection:NewButton("Copy Discord server to clipboard", "", function()
            setclipboard("https://discord.gg/3Hb5YUe6s2")
            toclipboard("https://discord.gg/3Hb5YUe6s2")
        end)
        ToggleSection:NewKeybind("Toggle UI", "", Enum.KeyCode.RightShift, function()
            Library:ToggleUI()
        end)
        
        MiscSection:NewButton("SERVERHOP", "", function()
            loadstring(game:HttpGet(('https://rawscripts.net/raw/Server-Browser_80'),true))()
        end)
        
        MiscSection:NewButton("Btools", "", function()
             local tool1 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
             local tool3 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
             tool1.BinType = "Clone"
             tool3.BinType = "Hammer"
        end)
        
        MiscSection:NewButton("Infinite Yield", "Loads Infinite Yield", function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
        end)
        
        MiscSection:NewButton("Dark Dex", "Loads Dark dex", function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
        end)
        
        MiscSection:NewButton("SimpleSpy", "Loads SS", function()
            loadstring(game:HttpGet(('https://pastebin.com/raw/RYaX9eCk'),true))()
        end)
        tpSection:NewSlider("WalkSpeed", "Change your Walkspeed", 500, 16, function(s) -- 500 (MaxValue) | 50 (MinValue)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
        end)
        
        tpSection:NewSlider("Jump", "Change your JumpPower", 500, 50, function(s) -- 500 (MaxValue) | 50 (MinValue)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
        end)
        tpSection:NewButton("TP Tool", "", function()
            local plr = game:GetService("Players").LocalPlayer
         local mouse = plr:GetMouse()
         local tool = Instance.new("Tool")
         tool.RequiresHandle = false
         tool.Name = "Click Teleport"
        
         tool.Activated:Connect(function()
         local root = plr.Character.HumanoidRootPart
         local pos = mouse.Hit.Position+Vector3.new(0,2.5,0)
         local offset = pos-root.Position
         root.CFrame = root.CFrame+offset
         end)
        
         tool.Parent = plr.Backpack
        end)
        tpSection:NewTextBox("tp to (type initials)", "Type the user to tp", function(txt)
            Players = game:GetService("Players")
            local msg = txt
            local function findPlayer(stringg)
                for _, v in pairs(Players:GetPlayers()) do
                     if stringg:lower() == (v.Name:lower()):sub(1, #stringg) then
                           return v
                     end
                end
            end
            
            local player = findPlayer(msg)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
        end)
        tpSection:NewToggle("Fly", "", function(state)
            if state then 
                sFLY()
            else
                NOFLY()
            end
end)

StatsSection:NewToggle("Ironman spam", "", function(state)
    if state then
    local mouse = player:GetMouse()
        _G.A = true
        while _G.A do wait()
            mouse.Button1Down:Connect(function()
                if _G.A then
                        local args = {
                            [1] = "Blast",
                            [2] = CFrame.new(mouse.Hit.p),
                        }
                        game:GetService("Players").LocalPlayer.Backpack.Repulsor.Repulsor.Repulsor:FireServer(unpack(args))
                end
            end)
        end
    else
        _G.A = false
    end
end)

StatsSection:NewToggle("wanda spam (hold hex bomb before clicking)", "", function(state)
    if state then
    local mouse = player:GetMouse()
        _G.AA = true
        while _G.AA do wait()
            mouse.Button1Down:Connect(function()
                if _G.AA then
                    local args = {
                        [1] = "Blast",
                        [2] = CFrame.new(mouse.Hit.p),
                    }
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hex Bomb"):FindFirstChild("Hex Bomb"):FindFirstChild("Hex Bomb"):FireServer(unpack(args))
                end
            end)
        end
    else
        _G.AA = false
    end
end)



StatsSection:NewButton("Infinite coins","", function()
local args = {
    [1] = "Tor",
    [2] = 9999999999999
}
game:GetService("ReplicatedStorage").Remotes.CodesClaimed:FireServer(unpack(args))
end)

StatsSection:NewButton("Unlock everything","", function()
    for i,v in pairs(game:GetService("Players").ManuelOrtega35.SavedSkinsFolder:GetChildrend()) do
        v.Value = true
    end
    for i,v in pairs(game:GetService("Players").ManuelOrtega35.SavedCharactersFolder:GetChildren()) do
        v.Value = true
    end
end)
StatsSection:NewButton("Remove doors","", function()
    for i,v in pairs(game:GetService("Workspace").InteractionObjects:GetChildren()) do
        if v.Name == "Door1" then
        v:Destroy()
        end
    end
end)