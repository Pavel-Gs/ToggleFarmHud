local f=CreateFrame("frame")
f:RegisterEvent("PLAYER_LOGIN")
f:SetScript("OnEvent",function(self)
    C_Timer.After(6, function()
    FarmHud:Toggle()
    end)
end)