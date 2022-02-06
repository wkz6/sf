getgenv().r = ('(p)')     
getgenv().s = (' ')
function notify(title,text,time)
    game.StarterGui:SetCore("SendNotification", {
        Title = title;
        Text = text;
        Duration = time;
    })
end
notify('roys invis boombox script idk ' .. tostring(s), 'press ' .. r .. ' to Enable/Disable.', 8)

loop = false
game:GetService('RunService').Stepped:connect(function()
    if loop then
            
        local LP = game.Players.LocalPlayer
        repeat wait() until LP.Character
        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v.Name == "BOOMBOXHANDLE" and v:IsA("Part") then
                v.Weld:Destroy()
                v.Anchored = false
                wait(2)
                v.Anchored = true
            end
        end
    end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
    if key == "p" then
        loop = not loop
        wait(0.00000000000000000000000000000000000000001)
        if loop == false then
            game.Players.LocalPlayer.Backpack["[Boombox]"].Parent = game.Players.LocalPlayer.Character
            wait(0.000000000000000000000000000000000000000000000000001)
            game.Players.LocalPlayer.Character["[Boombox]"].Parent = game.Players.LocalPlayer.Backpack
        end
    end
end)
