QBCore = exports['qb-core']:GetCoreObject()

--NUI
local display = false

local d = HM.discord
local t = HM.tebex
local w = HM.website

local servername = HM.sn
local menuname = HM.mn
local description  = HM.desc

local bind = HM.Bind
local keybind = HM.keybind

--Open menu
TriggerEvent("chat:addSuggestion", "/"..HM.Command, " This is a menu with faq and more!");
RegisterCommand(HM.Command, function(args)
    SetDisplay(not display)
end)


RegisterNUICallback("exit", function(data)
    SetDisplay(false)
end)

SendNUIMessage({
    type = "ui",
    status = bool,
})

--user TriggerEvent('swiftyhelp:openmenu') in other scripts to open the menu
RegisterNetEvent('swiftyhelp:openmenu', function ()
    SetDisplay(not display)
end)

CreateThread(function()
    while true do
        Wait(0)

        SendNUIMessage({
            type = 'servernameset',
            name = servername,
        })
        SendNUIMessage({
            type = 'menuname',
            mname = menuname,
        })
        SendNUIMessage({
            type = 'getdesctxt',
            desctxt = description,
        })
    end
end)

RegisterNUICallback("error", function(data)
    print('Help Menu [ERROR] '..data)
end)

--social buttons
RegisterNUICallback("discord", function(data)
    SendNUIMessage({
        type = 'discordclick',
        dget = d,
    })
end)
RegisterNUICallback("tebex", function(data)
    SendNUIMessage({
        type = 'tebexclick',
        tget = t,
    })
end)
RegisterNUICallback("website", function(data)
    SendNUIMessage({
        type = 'websiteclick',
        wget = w,
    })
end)

--If bind is enabled
if bind == true then
    RegisterKeyMapping(HM.Command, HM.sn..' Help Menu', 'keyboard', HM.keybind)
else 
    --nothing
end

Citizen.CreateThread(function()
    while display do
        Citizen.Wait(0)
        DisableControlAction(0, 1, display) 
        DisableControlAction(0, 2, display) 
        DisableControlAction(0, 142, display) 
        DisableControlAction(0, 18, display) 
        DisableControlAction(0, 322, display) 
        DisableControlAction(0, 106, display) 
    end
end)

    function SetDisplay(bool)
        display = bool
        SetNuiFocus(bool, bool)
        SendNUIMessage({
            type = "ui",
            status = bool,
        })
    end

    --Do not touch!
    print('swifty-help: Has started successfully!')
    print('You are on the latest version ['..HM.Version.."]")
    if servername == "" then
        print('For more customizeation fill in HM.sn located in Menu_config.lua')
    else
        print('ServerName is set to ['..servername..']')
    end 

    if menuname == "" then
        print('For more customizeation fill in HM.mn in Menu_config.lua')
    else
        print('title is set to ['..menuname..']')
    end 

    if keybind == '' then
        print('keybind has been set to nil. Please correct this')
    else
        print('Keybind key is set to '..keybind)
    end

    if bind == false then
       print('bind is set to False')
    else
        print('bind is set to True')
    end
