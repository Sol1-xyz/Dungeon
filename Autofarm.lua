for _, conn in pairs(getconnections(game:GetService("RunService").RenderStepped)) do
    conn:Disconnect()
end

-- Check if we’re in lobby
local ohTable1 = {
	["Location"] = "Orc Lands",
	["GroupType"] = "Public",
	["Difficult"] = "Easy",
	["Invasions"] = false
}
local ohTable2 = {
	["NoPotions"] = true
}

game:GetService("ReplicatedStorage").Events.CreateDungeonGroup:FireServer(ohTable1, ohTable2)

local Players = game:GetService("Players")
local player = Players.LocalPlayer

repeat wait() until player.Character or player.CharacterAdded:Wait()
local character = player.Character

repeat wait() until character:FindFirstChild("Humanoid") 

repeat wait() until game:IsLoaded()

local placeId = game.PlaceId
local ReplicatedStorage = game:GetService("ReplicatedStorage")



local UIInventoryController = require(game:GetService("Players").LocalPlayer.PlayerScripts.UIController.UIInventoryController)


local sellableIds = {}

for _, itemData in pairs(UIInventoryController.savedInventory) do
    local itemId = nil
    local rarity = nil

    -- Loop through each field in the item
    for key, value in pairs(itemData) do
        if key == "Id" then
            itemId = value
        elseif key == "Rarity" then
            rarity = value
        end
    end

    -- If the rarity is NOT Epic or Legendary, save the ID
    if rarity ~= "Epic" and rarity ~= "Legendary" and itemId then
        table.insert(sellableIds, itemId)
    end
end

game:GetService("ReplicatedStorage").Events.SellItems:InvokeServer(sellableIds)



if placeId == 112315720097464 then




queue_on_teleport('https://pastebin.com/raw/SGCXA4rM"))()')

    wait(0.5)
    ReplicatedStorage.Events.StartDungeonGroup:FireServer()
  


else
    -- Farming logic (auto loaded via the queued teleport script)
    loadstring(game:HttpGet("https://pastebin.com/raw/SGCXA4rM"))()
end
