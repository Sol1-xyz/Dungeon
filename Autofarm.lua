repeat wait() until game:IsLoaded()

for _, conn in pairs(getconnections(game:GetService("RunService").RenderStepped)) do
    conn:Disconnect()
end

repeat wait() until game:GetService("ReplicatedStorage").Events

local Players = game:GetService("Players")
local player = Players.LocalPlayer

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


repeat wait() until player.Character or player.CharacterAdded:Wait()
local character = player.Character

repeat wait() until character:FindFirstChild("Humanoid") 



local placeId = game.PlaceId
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local sellableIds = {}


local UIInventoryController = require(game:GetService("Players").LocalPlayer.PlayerScripts.UIController.UIInventoryController)

function ohtab(id)
     ohTable1 = {
	["Type"] = "Head",
	["Rarity"] = "Common",
	["Params"] = {},
	["Price"] = 3,
	["IsEquipped"] = false,
	["IsBlockedForIdentifyDrop"] = true,
	["GlobalType"] = "UndefinedArmor",
	["Id"] = id,
	["Title"] = "Undefined Helmet",
	["Name"] = "UndefinedHelmet",
	["Quality"] = 1,
	["Sharp"] = 0,
	["Level"] = 2,
	["Icon"] = "rbxassetid://88384566319596",
	["PossibleRarity"] = {
		[1] = "Common",
		[2] = "Uncommon",
		[3] = "Rare",
		[4] = "Epic",
		[5] = "Legendary",
		[6] = "Mythic"
	}
}

return ohTable1

end





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
        game:GetService("ReplicatedStorage").Events.IdentifyItem:InvokeServer(ohtab(itemId))
    end
end



--game:GetService("ReplicatedStorage").Events.SellItems:InvokeServer(sellableIds)



if placeId == 112315720097464 then




queue_on_teleport('loadstring(game:HttpGet("https://pastebin.com/raw/SGCXA4rM"))()')

    wait(1)
    ReplicatedStorage.Events.StartDungeonGroup:FireServer()
  


else
    -- Farming logic (auto loaded via the queued teleport script)
    loadstring(game:HttpGet("https://pastebin.com/raw/SGCXA4rM"))()
end
