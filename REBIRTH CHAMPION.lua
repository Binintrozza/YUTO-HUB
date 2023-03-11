game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "YUTO Hub", -- Required
	Text = "Loading HUB", -- Required
	Icon = "rbxassetid://12699767780" -- Optional
})
wait(0.1)
local Yutohub = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Binintrozza/GUI-SCRIPT/main/GUI_NEW.lua')))()

if game.PlaceId == 8540346411 then
    local Window = Yutohub:MakeWindow({Name = "YUTO HUB      [🐉UPDATE!] Rebirth Champions X  ", HidePremium = false, SaveConfig = true, IntroEnabled = false, IntroText = "YUTO HUB", IntroIcon = "rbxassetid://12699767780",Intro ="rbxassetid://7054195524" , ConfigFolder = "Yuto hub"})
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
    local CloverToggleEnabled = false
    local Section = Event:AddSection({
        Name = "🍀 AUTO Collect Clover 🍀 "
    })
    
-- Hàm lấy danh sách part của clover
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local GetClovers = ReplicatedStorage:WaitForChild("GetClovers")

Event:AddToggle({
    Name = "🍀 AUTO PICKUP Clover 🍀 ",
    Default = false,
    Callback = function(toggleState)
        CloverToggleEnabled = toggleState
        while CloverToggleEnabled do 
            -- Tương tác với tất cả các clover đang có
            local clovers = GetClovers:InvokeServer()
            for i, v in pairs(clovers) do
                if v:IsA("MeshPart") then 
                    firetouchinterest(game.Players.LocalPlayer.Character.Head, v, 0)
                end
            end
            wait(0.1)
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
