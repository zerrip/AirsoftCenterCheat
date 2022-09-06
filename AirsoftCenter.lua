local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "RocketX Key System", HidePremium = true, SaveConfig = true, ConfigFolder = "RocketxTest", IntroText= "Loading Key System"})

loadstring(game:HttpGet("https://raw.githubusercontent.com/Grayy12/KeySys/main/Protected%20(4).lua",true))()

getgenv().KeyInput = "string"

function Destroy()
    game:GetService("CoreGui").Orion:Destroy()
end

function CheckKey()
    if sf_key == KeyInput then
        Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/zerrip/AirsoftCenter/main/airsoftCenter.lua",true))();
    end
end

local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddTextbox({
    Name = "Enter Key",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        KeyInput = Value
    end      
})

Tab:AddButton({
    Name = "Check Key",
    Callback = function()
          CheckKey()
      end    
})

Tab:AddLabel("Get the key at: discord.gg/sulfate")
Tab:AddLabel("Goto key logs and paste the key!")
Tab:AddLabel("Have fun cheating!")