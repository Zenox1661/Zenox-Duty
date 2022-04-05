RegisterCommand("onduty", function(source, args, rawCommand)
    if IsPlayerAceAllowed(source, "Zenox.Duty") then
        local str = nil
        onduty = not onduty
        if onduty then
            str = " onduty as a **Law Enforcement Officer**"
        TriggerEvent("eblips:add", {name = "Law Enforcement Officer", src = str, color = 3})
        else
            str = " offduty as a **Law Enforcement Officer**"
            TriggerEvent("eblips:remove", source) 
        end
        TriggerClientEvent('t-notify:client:Alert', source, {
            style  =  'info',
            message  =  "You are now"..str..".",
            duration = 7000, -- Displays for 7 Seconds.
            sound = true
        })
    else
        TriggerClientEvent('t-notify:client:Alert', source, {
            style  =  'error',
            message  =  "You do not have the **Required Roles** to go onduty as a **Law Enforcement Officer**.",
            duration = 7000, -- Displays for 7 Seconds.
            sound = true
        })
    end
end)

RegisterCommand("ems", function(source, args, rawCommand)
    if IsPlayerAceAllowed(source, "Zenox.EMS") then
        local str = nil
        ems = not ems
        if ems then
            str = " onduty as **Emergency Services**"
        TriggerEvent("eblips:add", {name = "EMS", src = str, color = 1})
        else
            str = " offduty as **Emergency Services**"
            TriggerEvent("eblips:remove", source) 
        end
        TriggerClientEvent('t-notify:client:Alert', source, {
            style  =  'info',
            message  =  "You are now"..str..".",
            duration = 7000, -- Displays for 7 Seconds.
            sound = true
        })
    else
        TriggerClientEvent('t-notify:client:Alert', source, {
            style  =  'error',
            message  =  "You do not have the **Required Roles** to go onduty as **Emergency Services**",
            duration = 7000, -- Displays for 7 Seconds.
            sound = true
        })
    end
end)