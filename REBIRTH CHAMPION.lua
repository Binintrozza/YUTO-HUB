game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "YUTO Hub", -- Required
	Text = "Loading HUB", -- Required
	Icon = "rbxassetid://12699767780" -- Optional
})
wait(0.1)
local Yutohub = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Binintrozza/GUI-SCRIPT/main/GUI_NEW.lua')))()

if game.PlaceId == 8540346411 then
    local Window = Yutohub:MakeWindow({Name = "YUTO HUB      [πEVENT!] Rebirth Champions X", HidePremium = false, SaveConfig = true, IntroEnabled = false, IntroText = "YUTO HUB", IntroIcon = "rbxassetid://12699767780",Intro ="rbxassetid://7054195524" , ConfigFolder = "Yuto hub"})
    local MainToggleEnabled = false
    local Main = Window:MakeTab({
        Name = "π MAIN π",
        Icon = "rbxassetid://12699767780",
        PremiumOnly = false
    })
    local Section = Main:AddSection({
        Name = "Main"
    })
    Main:AddParagraph("π Auto Click For Auto farm π ","Use for auto farm ")
    Main:AddToggle({
        Name = "Auto click",
        Default = false,
        Callback = function(toggleState)
            MainToggleEnabled = toggleState
            while MainToggleEnabled do -- loop while the toggle is enabled
                local Event = game:GetService("ReplicatedStorage").Events.Click3
                Event:FireServer()
                wait(0.1) -- wait for a short time before repeating
            end
        end
    })
    local Event = Window:MakeTab({
        Name = "π St.Patrick's Event π",
        Icon = "rbxassetid://12699767780",
        PremiumOnly = false
    })
    local Section = Event:AddSection({
        Name = "π AUTO Collect Clover π "
    })
-- Toggle auto collect clover
local EventToggleEnabled = false
local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
Event:AddToggle({
    Name = "π AUTO Collect Clover π ",
    Default = false,
    Callback = function(toggleState)
        EventToggleEnabled = toggleState
        while EventToggleEnabled do
            for _, v in pairs(game:GetService("Workspace").Scripts.CollectClovers.Points:GetChildren()) do
                if not EventToggleEnabled then -- Kiα»m tra trαΊ‘ng thΓ‘i toggle
                    break -- Dα»«ng vΓ²ng lαΊ·p nαΊΏu toggle ΔΓ£ bα» tαΊ―t
                end
                if v:IsA("Part") then
                    rootPart.CFrame = v.CFrame
                    wait(0.1)
                end
            end
        end
    end
})


 
    else
    Yutohub:MakeNotification({
        Name = "DONT SUPPORT THIS GAME",
        Content = "Check STATUS ON DISCORD SEVER ( YUTO HUB | COMMUNITY )",
        Image = "rbxassetid://12699767780",
        Time = 10
    })
    

    Yutohub:Init()
end
