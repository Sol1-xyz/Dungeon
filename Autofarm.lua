
repeat wait() until game:IsLoaded()
local Players = game:GetService("Players")
local player = Players.LocalPlayer

repeat wait() until player.Character or player.CharacterAdded:Wait()
local character = player.Character

repeat wait() until character:FindFirstChild("Humanoid") and character:FindFirstChild("ShortSwords")
 if game.PlaceId == 112315720097464 then
 wait(2)
 local ohTable1 = {
 	["Location"] = "Orc Lands",
 	["GroupType"] = "Private",
 	["Difficult"] = "Easy",
 	["Invasions"] = false
 }
 local ohTable2 = {
 	["ReduceMaxHPBy70"] = false,
 	["NoPotions"] = true,
 	["ReduceDamageBy50"] = false,
 	["Damage2x"] = false
 }
 queue_on_teleport('repeat wait() until game:IsLoaded(); loadstring(game:HttpGet("https://pastebin.com/raw/bLNHj0WB"))()')
 game:GetService("ReplicatedStorage").Events.CreateDungeonGroup:FireServer(ohTable1, ohTable2)
 wait(0.5)
 game:GetService("ReplicatedStorage").Events.StartDungeonGroup:FireServer()
 end
 



