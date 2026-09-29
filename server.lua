local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Database initialization
MySQL.ready(function()
    print('FiveMScript database ready')
end)

-- Example server event
RegisterNetEvent('fivemscript:serverEvent')
AddEventHandler('fivemscript:serverEvent', function(data)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        -- Process data and save to database
        MySQL.Async.execute('INSERT INTO ' .. Config.Database.TableName .. ' (player_id, data_value) VALUES (@player_id, @data_value)', {
            ['@player_id'] = xPlayer.identifier,
            ['@data_value'] = data
        }, function(rowsChanged)
            if rowsChanged > 0 then
                print('Data saved for player ' .. xPlayer.identifier)
            end
        end)
    end
end)

-- Example command
ESX.RegisterCommand('fivemscript', 'user', function(xPlayer, args, showError)
    if Config.Settings.EnableFeature then
        TriggerClientEvent('fivemscript:clientEvent', xPlayer.source, 'Test data')
    else
        xPlayer.showNotification('Feature is disabled')
    end
end, false, {help = 'FiveMScript command'})