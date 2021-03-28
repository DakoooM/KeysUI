print("^4This script created by DakoM^1\n^2Github:^1 https://github.com/DakoooM")

local UiShow = false
RegisterCommand("touches", function()
    if UiShow == false then
        SendNUIMessage({actionhud = "afficher", showhud = true})
        UiShow = true
    elseif UiShow == true then
        SendNUIMessage({actionhud = "afficher", showhud = false})
        UiShow = false
    end
end, false)

AddEventHandler("playerSpawned", function()
    CreateThread(function()
        Wait(100)
        SendNUIMessage({actionhud = "afficher", showhud = false})
    end)
end)

AddEventHandler("onResourceStart", function()
    CreateThread(function()
        Wait(100)
        SendNUIMessage({actionhud = "afficher", showhud = false})
    end)
end)