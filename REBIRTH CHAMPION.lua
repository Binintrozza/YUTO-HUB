game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "YUTO Hub", -- Required
	Text = "Loading HUB", -- Required
	Icon = "rbxassetid://12699767780" -- Optional
})
wait(0.1)
local Yutohub = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Binintrozza/GUI-SCRIPT/main/GUI_NEW.lua')))()

if game.PlaceId == 8540346411 then
    local Window = Yutohub:MakeWindow({Name = "YUTO HUB      [🍀EVENT!] Rebirth Champions X", HidePremium = false, SaveConfig = true, IntroEnabled = false, IntroText = "YUTO HUB", IntroIcon = "rbxassetid://12699767780",Intro ="rbxassetid://7054195524" , ConfigFolder = "Yuto hub"})
    local MainToggleEnabled = false
    local Main = Window:MakeTab({
        Name = "💎 MAIN 💎",
        Icon = "rbxassetid://12699767780",
        PremiumOnly = false
    })
    local Section = Main:AddSection({
        Name = "Main"
    })
    Main:AddParagraph("👆 Auto Click For Auto farm 👆 ","Use for auto farm ")
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
        Name = "🍀 St.Patrick's Event 🍀",
        Icon = "rbxassetid://12699767780",
        PremiumOnly = false
    })
    local Section = Event:AddSection({
        Name = "🍀 AUTO Collect Clover 🍀 "
    })
-- Toggle auto collect clover
-- Hàm lấy danh sách part của clover
local function GetCloverParts()
    local parts = {}
    for _, CloverModel in pairs(game.Workspace.Scripts.CollectClovers.Storage:GetChildren()) do
        if CloverModel:IsA("Model") and CloverModel.Name == "Clover" then
            for _, part in pairs(CloverModel:GetDescendants()) do
                if part:IsA("MeshPart") then
                    table.insert(parts, part)
                end
            end
        end
    end
    return parts
end

-- Toggle auto collect clover
_G.CloverToggleEnabled = false
Event:AddToggle({
    Name = "🍀 AUTO Collect Clover 🍀 ",
    Default = false,
    Callback = function(toggleState)
        _G.CloverToggleEnabled = toggleState
        while _G.CloverToggleEnabled do 
            local CloverParts = GetCloverParts()
            for _, MeshPart in pairs(CloverParts) do
                firetouchinterest(game.Players.LocalPlayer.Character.Head, MeshPart, 0)
            end
            wait(1) -- Thời gian chờ giữa mỗi lần touch interest lại các Part của Clover
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
