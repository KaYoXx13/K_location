RMenu.Add("b", "m", RageUI.CreateMenu("Location","Gestion"))
RMenu:Get("b", "m").Closed = function()
end

RMenu.Add("liste", "list", RageUI.CreateSubMenu(RMenu:Get("b", "m"), "Location voiture", "Gestion voiture"))
RMenu:Get("liste", "list").Closed = function()
end

RMenu.Add("j", "j", RageUI.CreateSubMenu(RMenu:Get("b", "m"), "Location moto", "Gestion moto"))
RMenu:Get("j", "j").Closed = function()
end

GM = nil 

local open = false 



function menu()
    if open then 
        open = false 
        RageUI.Visible(RMenu:Get("b", "m"),false)
    else
        open = true 
        RageUI.Visible(RMenu:Get("b", "m"), true)
        Citizen.CreateThread(function()
            while open do 
                RageUI.IsVisible(RMenu:Get("b", "m"), true,true,true,function()

                    RageUI.ButtonWithStyle("Demander une location voiture", nil, {}, true, function(h,a,s)
                    end, RMenu:Get("liste", "list"))

                    RageUI.ButtonWithStyle("~b~----------------------------------------", nil, {}, true, function(h,a,s)
                    end, RMenu:Get("b", "m"))
                    
                    RageUI.ButtonWithStyle("Demander une location moto", nil, {}, true, function(h,a,s)
                    end, RMenu:Get("j", "j"))

                end, function()end, 1)


                RageUI.IsVisible(RMenu:Get("liste", "list"), true,true,true,function()

                    RageUI.ButtonWithStyle("Dynasty", nil, {}, true, function(h,a,s)
                        if s then
                            TriggerServerEvent("tuto:tuto")
                            RageUI.CloseAll()
                        end
                    end, RMenu:Get("liste", "list"))

                    RageUI.ButtonWithStyle("Zion", nil, {}, true, function(h,a,s)
                        if s then
                            TriggerServerEvent("kayoxx:zion")
                            RageUI.CloseAll()
                        end
                    end, RMenu:Get("liste", "list"))

                    RageUI.ButtonWithStyle("impaler", nil, {}, true, function(h,a,s)
                        if s then
                            TriggerServerEvent("kayoxx:imp")
                            RageUI.CloseAll()
                        end
                    end, RMenu:Get("liste", "list"))

                end, function()end, 1)

                RageUI.IsVisible(RMenu:Get("j", "j"), true,true,true,function()

                    RageUI.ButtonWithStyle("", nil, {}, true, function(h,a,s)
                    end, RMenu:Get("j", "j"))

                    RageUI.ButtonWithStyle("", nil, {}, true, function(h,a,s)
                    end, RMenu:Get("j", "j"))

                    RageUI.ButtonWithStyle("", nil, {}, true, function(h,a,s)
                    end, RMenu:Get("j", "j"))

                end, function()end, 1)

                Wait(0)
            end
        end)
    end
end

Citizen.CreateThread(function()
    local ped = "a_m_m_hasjew_01"
    local hash = GetHashKey(ped)
    local ped2 = CreatePed(2, hash, -1034.71, -2733.30, 20.169, 149.60, false, false)
    RequestModel(hash)
    while not HasModelLoaded(hash) do 
        Wait(10)
    end
    SetBlockingOfNonTemporaryEvents(ped2, true)
    SetEntityInvincible(ped2, true)
    CreateFakeMpGamerTag(ped2, "Ben", false, false, false, false)
    Wait(1000)
    FreezeEntityPosition(ped2, true)
end)

Citizen.CreateThread(function()
    while true do 
        local interval = 1
        local pos = GetEntityCoords(PlayerPedId())
        local dest = vector3(-1034.71, -2733.30, 20.169)
        local distance = GetDistanceBetweenCoords(pos, dest, true)
        if distance > 3 then 
            interval = 200
        else 
            interval = 1
            GM.ShowHelpNotification('Appuyez sur ~INPUT_PICKUP~ pour commander une location !')
            if IsControlJustPressed(1,51) then 
                menu()
            end
        end
        Wait(interval)
    end
end)

RegisterNetEvent("kayoxx:carspawn")
AddEventHandler("kayoxx:carspawn", function()
    local car = "dynasty"
    local hash = GetHashKey(car)
    RequestModel(hash)
    while not HasModelLoaded(hash) do 
        Wait(10)
    end
    local kayoxx = CreateVehicle(hash, -1083.98, -2588.09, 20.169, 151.43, false, false)
    local ped = "ig_tomcasino"
    local hash = GetHashKey(ped)
    RequestModel(ped)
    while not HasModelLoaded(ped) do 
        Wait(10)
    end
    local ui = CreatePedInsideVehicle(kayoxx, 9, hash, -1, false, true)
    TaskVehicleDriveToCoordLongrange(ui, kayoxx, -1033.41, -2728.72, 20.149, 10.00, 447, 2.0)
    Wait(22000)
    GM.ShowAdvancedNotification('~b~Information', "~p~La location a bien été livré !", logik, "CHAR_CARSITE", 1)
    TaskLeaveVehicle(ui, kayoxx, 1)
end)

RegisterNetEvent("kayoxx:carspawnzion")
AddEventHandler("kayoxx:carspawnzion", function()
    local car = "zion3"
    local hash = GetHashKey(car)
    RequestModel(hash)
    while not HasModelLoaded(hash) do 
        Wait(10)
    end
    local kayoxx = CreateVehicle(hash, -1083.98, -2588.09, 20.169, 151.43, false, false)
    local ped = "ig_tomcasino"
    local hash = GetHashKey(ped)
    RequestModel(ped)
    while not HasModelLoaded(ped) do 
        Wait(10)
    end
    local ui = CreatePedInsideVehicle(kayoxx, 9, hash, -1, false, true)
    TaskVehicleDriveToCoordLongrange(ui, kayoxx, -1033.41, -2728.72, 20.149, 10.00, 447, 2.0)
    Wait(22000)
    GM.ShowAdvancedNotification('~b~Information', "~p~La location a bien été livré !", "logik", "CHAR_CARSITE", 1)
    TaskLeaveVehicle(ui, kayoxx, 1)
end)


RegisterNetEvent("kayoxx:impaler")
AddEventHandler("kayoxx:impaler", function()
    local car = "impaler"
    local hash = GetHashKey(car)
    RequestModel(hash)
    while not HasModelLoaded(hash) do 
        Wait(10)
    end
    local kayoxx = CreateVehicle(hash, -1083.98, -2588.09, 20.169, 151.43, false, false)
    local ped = "ig_tomcasino"
    local hash = GetHashKey(ped)
    RequestModel(ped)
    while not HasModelLoaded(ped) do 
        Wait(10)
    end
    local ui = CreatePedInsideVehicle(kayoxx, 9, hash, -1, false, true)
    TaskVehicleDriveToCoordLongrange(ui, kayoxx, -1033.41, -2728.72, 20.149, 10.00, 447, 2.0)
    Wait(22000)
    GM.ShowAdvancedNotification('~b~Information', "~p~La location a bien été livré !", logik, "CHAR_CARSITE", 1)
    TaskLeaveVehicle(ui, kayoxx, 1)
end)


RegisterCommand("location", function()
    menu()
end)