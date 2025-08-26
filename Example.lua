-- // Welcome to Simple UI \\ --
-- // See here how use it \\ --
-- // Credits ( Venix Tester ) ( VantaXock Owner of Liblary ) \\ --


-- // load I First \\ --

local SimpleUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Aux-Developm3nt/ZyXn/refs/heads/main/xc.lua"))()
-- create a window ( make it Draggble )
local window = SimpleUI:CreateWindow("Test Window")


-- // add Window addlabel \\ --
window:AddLabel({
    text = "Welcome! This is a label"
})

window:AddLabel({
    text = "Labels are used to show information"
})


-- // add Window Addbutton \\ ---

window:AddButton({
    text = "Click Me!",
    callback = function()
        print("Button was clicked!")
    end
})

window:AddButton({
    text = "Print Hello",
    callback = function()
        print("Hello from SimpleUI!")
    end
})

-- // add window addtoggle \\ --

window:AddToggle({
    text = "God Mode",
    state = false,
    flag = "GodMode",
    callback = function(value)
        print("God Mode is now:", value)
        if value then
            print("God Mode ON!")
        else
            print("God Mode OFF!")
        end
    end
})

window:AddToggle({
    text = "Auto Farm",
    state = true,
    flag = "AutoFarm",
    callback = function(value)
        print("Auto Farm:", value and "ENABLED" or "DISABLED")
    end
})


-- // Window addTextbox \\ --

window:AddTextbox({
    text = "Chat Message",
    placeholder = "Enter text...",
    flag = "ChatMsg",
    callback = function(text)
        print("You typed:", text)
        game.Players.LocalPlayer:Chat(text)
    end
})

window:AddTextbox({
    text = "Player Name",
    placeholder = "Enter player name...",
    flag = "PlayerName",
    callback = function(text)
        print("Target player:", text)
    end
})


-- // you can also add  Folder ( and repeat it ) \\ --


local mainFolder = window:AddFolder({
    title = "Main Features",
    open = true
})



mainFolder:AddLabel({
    text = "These elements are inside a folder!"
})

mainFolder:AddToggle({
    text = "Fly Mode",
    state = false,
    flag = "FlyMode",
    callback = function(value)
        print("Fly Mode:", value)
    end
})

mainFolder:AddButton({
    text = "TP to Spawn",
    callback = function()
        print("Teleporting to spawn...")
    end
})

mainFolder:AddTextbox({
    text = "Walkspeed",
    placeholder = "16",
    flag = "WalkSpeed",
    callback = function(text)
        local speed = tonumber(text)
        if speed then
            print("Setting walkspeed to:", speed)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
        end
    end
})

local farmingFolder = window:AddFolder({
    title = "Farming",
    open = false
})

farmingFolder:AddLabel({
    text = "Auto farming options:"
})

farmingFolder:AddToggle({
    text = "Auto Collect",
    state = false,
    flag = "AutoCollect",
    callback = function(value)
        print("Auto Collect:", value)
    end
})

farmingFolder:AddToggle({
    text = "Auto Sell",
    state = false,
    flag = "AutoSell",
    callback = function(value)
        print("Auto Sell:", value)
    end
})

farmingFolder:AddButton({
    text = "Collect All",
    callback = function()
        print("Collecting everything...")
    end
})

local combatFolder = window:AddFolder({
    title = "Combat",
    open = false
})

combatFolder:AddToggle({
    text = "Kill Aura",
    state = false,
    flag = "KillAura",
    callback = function(value)
        print("Kill Aura:", value)
    end
})

combatFolder:AddTextbox({
    text = "Kill Aura Range",
    placeholder = "10",
    flag = "KARange",
    callback = function(text)
        print("Kill Aura range set to:", text)
    end
})

-- // also don't forgot if you finished the Script add on Last ( SimpleUI:Init() ) \\ --

SimpleUI:Init()

-- // that's all \\ --
