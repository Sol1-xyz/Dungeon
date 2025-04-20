repeat wait() until game:IsLoaded()
if game.PlaceId == 112315720097464 then

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

game:GetService("ReplicatedStorage").Events.CreateDungeonGroup:FireServer(ohTable1, ohTable2)
wait(0.5)
game:GetService("ReplicatedStorage").Events.StartDungeonGroup:FireServer()
end

queue_on_teleport('repeat wait() until game:IsLoaded(); loadstring(game:HttpGet("https://pastebin.com/raw/ZN19esUw"))()')
