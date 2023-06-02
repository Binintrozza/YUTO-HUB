-- afs
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "YUTO Hub", -- Required
	Text = "Loading HUB", -- Required
	Icon = "rbxassetid://12699767780" -- Optional
})
wait(0.1)

local Yutohub = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Binintrozza/YUTO-HUB/main/main.lua')))()
if game.PlaceId == 8425128940 then
    local MarketplaceService = game:GetService("MarketplaceService")
local placeName = MarketplaceService:GetProductInfo(game.PlaceId).Name
    local Window = Yutohub:MakeWindow({Name = "YUTO HUB      ", HidePremium = false, SaveConfig = false, IntroEnabled = false, IntroText = "YUTO HUB", IntroIcon = "rbxassetid://12699767780",Intro ="rbxassetid://7054195524" , ConfigFolder = "Yuto hub"})
    local MainToggleEnabled = false
    local Main = Window:MakeTab({
        Name = "MAIN ",
        Icon = "rbxassetid://12699767780",
        PremiumOnly = false
    }) 
    local Section = Main:AddSection({
        Name = "AUTO FARM"
    })
    local autohatch = false
    local autohatchmax = false
        local function AntiAFK()
        local vu = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:connect(function()
            vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            wait(1)
            vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        end)
    end
    AntiAFK()
    Main:AddToggle({
	Name = "Auto Hatch last Map",
	Default = false,
	Callback = function(togglestate)
		autohatch = togglestate
		while autohatch do 
		local args = {
    [1] = workspace:WaitForChild("Worlds"):WaitForChild("MadeInAbyss"):WaitForChild("MadeInAbyssEgg"),
    [2] = 13
}

game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("OpenEgg"):InvokeServer(unpack(args))
wait (3)
		end
	end    
})Main:AddToggle({
	Name = "Auto Hatch max last Map",
	Default = false,
	Callback = function(togglestate)
		autohatchmax =togglestate
		while autohatchmax do 
		local args = {
    [1] = "MadeInAbyssEgg"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("AttemptMultiOpen"):FireServer(unpack(args))
wait (0.5)
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
