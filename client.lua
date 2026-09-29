local ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    -- Client-side initialization
    print('FiveMScript client initialized')
end)

-- Example client event
RegisterNetEvent('fivemscript:clientEvent')
AddEventHandler('fivemscript:clientEvent', function(data)
    ESX.ShowNotification('Received data: ' .. data)
end)