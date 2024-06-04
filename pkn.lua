local ReplicatedStorage = game:GetService("ReplicatedStorage")
local OnPlayerKilledEvent
local isActive = true

local function findAndTrackOnPlayerKilled()
    for _, item in ipairs(ReplicatedStorage:GetDescendants()) do
        if item:IsA("RemoteEvent") and item.Name == "OnPlayerKilled" then
            OnPlayerKilledEvent = item
            print("OnPlayerKilled Remote Event Found")

            OnPlayerKilledEvent.OnClientEvent:Connect(function(killed, killer)
                if isActive then
                    print("OnPlayerKilled Event Triggered")
                    killerName = (killer and killer.Name or "Nil")
                    killedName = (killed and killed.Name or "Nil")
                    game:GetService("StarterGui"):SetCore("SendNotification", {
                        Title = "Trime -S",
                        Text = "Player killed!\nKiller: " .. killerName .. "\nKilled: " .. killedName,
                    })
                end
            end)
            break
        end
    end
end

if isActive then
    findAndTrackOnPlayerKilled()
end

while not OnPlayerKilledEvent do
    if isActive then
        findAndTrackOnPlayerKilled()
    end
    wait(5)
end

local userInputService = game:GetService("UserInputService")

local function onKeyPressB(input, gameProcessed)
    if gameProcessed then
        return
    end

    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.B then
        isActive = not isActive
        if isActive then
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Trime -S",
                Text = "Player killed notification enabled!",
            })
        else
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Trime -S",
                Text = "Player killed notification disabled!",
            })
        end
    end
end

userInputService.InputBegan:Connect(onKeyPressB)
