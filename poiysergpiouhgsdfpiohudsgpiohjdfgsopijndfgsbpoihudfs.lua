IsPlaying = true -- (true = come�ar)/(false = parar) -- ID (obs: mesmo id do V4)
local Name = "" -- Name (nome do audio na workspace)
local Pitch = 1 -- Pitch (pitch = velocidade, o padr�o � 1)

for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v:IsA("RemoteEvent") and v.Name == "AC6_FE_Sounds" then
        if IsPlaying == true then
            v:FireServer("newSound", Name, workspace, getgenv().Id, Pitch, getgenv().Volume, true)
            v:FireServer("playSound", Name)
        end 

        if IsPlaying == false then
            v:FireServer("stopSound", Name)
        end
    end
end
