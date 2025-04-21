print("nig")

repeat wait() until game:IsLoaded()

local Players = game:GetService("Players")
local player = Players.LocalPlayer

repeat wait() until player.Character or player.CharacterAdded:Wait()
local character = player.Character

repeat wait() until character:FindFirstChild("Humanoid") and character:FindFirstChild("ShortSwords")




function hrp()
    return game.Players.LocalPlayer.Character.PrimaryPart
end

function getmob()
    local finalmob = nil
for i,v in pairs(game.Workspace.Characters:GetChildren()) do
    if v ~= game.Players.LocalPlayer.Character and v:FindFirstChild("HumanoidRootPart") and v.Name ~= "ThorfinnKarlsefni73" then
        return v.HumanoidRootPart;
    end
end



end

function useskills(pos)
 
    game:GetService("ReplicatedStorage").Events.Combat:FireServer("Attack")
    
    local ohTable1 = {
        ["Skill"] = "FlurryOfBlows",
        ["Function"] = "Activate"
    }
    local ohVector32 = pos
    local ohBoolean3 = true
    
    game:GetService("ReplicatedStorage").Events.Skill:FireServer(ohTable1, ohVector32, ohBoolean3)
    
    
    local ohTable1 = {
        ["Skill"] = "BloodyCut",
        ["Function"] = "Activate"
    }
    local ohVector32 = pos
    local ohBoolean3 = true
    
    game:GetService("ReplicatedStorage").Events.Skill:FireServer(ohTable1, ohVector32, ohBoolean3)
    

end

local function haslowmana()
    local label = game:GetService("Players").LocalPlayer.PlayerGui.HotBar.Info.MP.TextValue
    if not label or not label:IsA("TextLabel") then return false end

    local manaText = label.Text -- e.g., "40/54"
    local current, max = manaText:match("^(%d+)%s*/%s*(%d+)$") -- safely extract both numbers

    current, max = tonumber(current), tonumber(max)

    if current and max and max > 0 then
        local ratio = current / max
        return ratio <= 0.3
    end

    return false -- fallback if something went wrong
end

local function manaratio()
    local label = game:GetService("Players").LocalPlayer.PlayerGui.HotBar.Info.MP.TextValue
    if not label or not label:IsA("TextLabel") then return 0 end

    local manaText = label.Text -- e.g., "40/54"
    local current, max = manaText:match("^(%d+)%s*/%s*(%d+)$")

    current, max = tonumber(current), tonumber(max)

    if current and max and max > 0 then
        return current / max
    end

    return 0 -- fallback if something failed
end







getgenv().autofarm = true
getgenv().healing = false
getgenv().campfirecframe = nil
getgenv().lastsave = nil

for i,v in pairs(workspace.Tower:GetChildren()) do
    if v.Name == "StartRoom" then
        if v:FindFirstChild("Campfire") then
            pcall(function()
            getgenv().campfirecframe = v.Campfire.Hitbox.CFrame + Vector3.new(0,2,0)
            end)
        end
    end
end
        





 
local chestPositions = {}
local scannedCFrames = {}
local portalCFrames = {}

local maxhp = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
local hasdice = false;
getgenv().speciale = false;
getgenv().tempmaxhp = nil;
local ohString1 = "Equip/UnEquip"

game:GetService("ReplicatedStorage").Events.WeaponsEvent:FireServer(ohString1)
while getgenv().autofarm and wait() do



  
    spawn(function()
    for _, floor in pairs(workspace.Tower:GetChildren()) do
        local chest = floor:FindFirstChild("Chest") or floor:FindFirstChild("SecretChest")
        
        if chest and chest:IsA("Model") and chest.PrimaryPart then
            local cframe = chest.PrimaryPart.CFrame

            -- Check for duplicates (using position instead of raw CFrame to be more forgiving)
            local isDuplicate = false
            for _, existingCFrame in pairs(scannedCFrames) do
                if (existingCFrame.Position - cframe.Position).magnitude < 1 then
                    isDuplicate = true
                    break
                end
            end

            if not isDuplicate then
                table.insert(chestPositions, cframe)
                table.insert(scannedCFrames, cframe)
           
            end
        end
    end
end)


spawn(function()
for _, floor in pairs(workspace.Tower:GetChildren()) do
    local portal = floor:FindFirstChild("ExitPortal")

    if portal and portal:FindFirstChild("Particle") and portal.Particle.Enabled == true then
        local pos = portal.Position

        -- Check for duplicates based on distance
        local isDuplicate = false
        for _, existingCFrame in ipairs(portalCFrames) do
            if (existingCFrame.Position - pos).Magnitude < 1 then
                isDuplicate = true
                break
            end
        end

        if not isDuplicate then
            table.insert(portalCFrames, portal.CFrame)
        end
    end
end
end)



    local mob = getmob()
  
    if game.Players.LocalPlayer.Character.Humanoid.Health <= game.Players.LocalPlayer.Character.Humanoid.MaxHealth / 2 or game.Players.LocalPlayer.Character.Humanoid.MaxHealth < maxhp / 1.6 or manaratio() <= 0.2 then
        if not getgenv().healing then
        getgenv().lastsave = game.Players.LocalPlayer.Character.PrimaryPart.CFrame
        getgenv().healing = true
        else
            if game.Players.LocalPlayer.Character.Humanoid.MaxHealth < maxhp and not getgenv().speciale then
                getgenv().speciale = true;
                getgenv().tempmaxhp = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
            end
            
            spawn(function()
            while getgenv().healing and wait() and getgenv().autofarm do
                
                    
                if game.Players.LocalPlayer.Character.Humanoid.Health >= game.Players.LocalPlayer.Character.Humanoid.MaxHealth / 1.15 and game.Players.LocalPlayer.Character.Humanoid.MaxHealth >= maxhp / 1.1 and manaratio() >= 0.7 and not getgenv().speciale then
                    
                    getgenv().healing = false
                    game.Players.LocalPlayer.Character.PrimaryPart.CFrame = lastsave
                    wait(0.3)
                    break
                elseif getgenv().speciale and  game.Players.LocalPlayer.Character.Humanoid.Health >= getgenv().tempmaxhp / 1.1 and game.Players.LocalPlayer.Character.Humanoid.MaxHealth >= maxhp / 1.2  and manaratio() >= 0.7 then
                    getgenv().healing = false
                    game.Players.LocalPlayer.Character.PrimaryPart.CFrame = lastsave
                    getgenv().speciale = false;
                    wait(0.3)
                    break;
                end
                game.Players.LocalPlayer.Character.PrimaryPart.CFrame = getgenv().campfirecframe
            
        end
    end)
        
    end
    end

  
   local tt = nil
    for z,x in pairs(game.Workspace.Tower:GetChildren()) do
        if x:FindFirstChild("Dice") then
            if x.Dice:FindFirstChild("Dice") then
            hasdice = true
            tt = x
            end
        end
    end
    getgenv().nope = false;
    if hasdice and tt then
        for i5,v5 in pairs(tt.Dice:GetChildren()) do
            if not v5:FindFirstChild("ForceField") then
                --
                getgenv().nope = true
                hasdice = false;
            end
       
        end
        if not getgenv().nope then
            
            pcall(function()
            hrp().CFrame = tt.Dice.Dice.CFrame
            wait(0.5)
            fireproximityprompt(tt.Dice.Dice.ProximityPrompt)
            wait(0.2)
            end)
            end
        
    end

    
    if not getgenv().healing and mob and not hasdice then
        
     
        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = 
        mob.CFrame + mob.CFrame.lookVector * -2
       
        useskills(mob.Position)
        
    end

    if #(workspace.Characters:GetChildren()) <= 1 or #(workspace.Characters:GetChildren()) <= 2 and mob and mob.Parent and mob.Parent.Name:match("Mr. Rotten")  then
        for i,v in pairs(chestPositions) do
        hrp().CFrame = v
        wait(0.5)
        for i2,v2 in pairs(game.Workspace:GetDescendants()) do
            if v2.Name == "ProximityPrompt" then
                fireproximityprompt(v2)
                
            end
        end
        wait(0.5)
        end
        break;
        

    end


end

for i1,v1 in pairs(portalCFrames) do
    pcall(function() -- maybe remove if portal fail
    hrp().CFrame = v1 + Vector3.new(0,5,0)
    end)
    wait(0.7)
    for _, vv in pairs(workspace.Tower:GetChildren()) do
        if vv:FindFirstChild("ExitPortal") then
           fireproximityprompt(vv.ExitPortal.ProximityPrompt)
        end
    enddsd
    wait(0.5)
end
queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/Sol1-xyz/Dungeon/refs/heads/main/Autofarm.lua"))()')
wait(0.5)
game:GetService("ReplicatedStorage").UIEvents.PlayerReturnLobby:FireServer()
