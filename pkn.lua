local ReplicatedStorage = game:GetService("ReplicatedStorage")
local OnPlayerKilledEvent
local isActive = false
local PKN = {}

local function findAndTrackOnPlayerKilled()
    for _, item in ipairs(ReplicatedStorage:GetDescendants()) do
        if item:IsA("RemoteEvent") and item.Name == "OnPlayerKilled" then
            OnPlayerKilledEvent = item
            print("OnPlayerKilled Remote Event Found")

            OnPlayerKilledEvent.OnClientEvent:Connect(function(killed, killer)
                if isActive then
                    print("OnPlayerKilled Event Triggered")
                    local killerName = (killer and killer.Name or "Nil")
                    local killedName = (killed and killed.Name or "Nil")
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

local PKN = {}

function PKN:togglePKN()
    isActive = not isActive
    if isActive then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Trime -S",
            Text = "Player Kill Notification Enabled!",
        })
    else
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Trime -S",
            Text = "Player Kill Notification Disabled!",
        })
    end
end

findAndTrackOnPlayerKilled()

return PKN
