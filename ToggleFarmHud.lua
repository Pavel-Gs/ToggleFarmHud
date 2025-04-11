-- Creates a new invisible frame and assigns it to the variable f
-- Frames are used for event handling, timers, or actual visual elements
local f=CreateFrame("frame")			-- "frame" is a generic type of frame, sufficient for registering events

-- Registers the frame f to listen for the PLAYER_LOGIN event
f:RegisterEvent("PLAYER_LOGIN")			-- This event fires after the player has fully logged into the game world

-- Assigns an event handler script to the frame for any events it listens to (in this case, just PLAYER_LOGIN)
-- This function will be executed when PLAYER_LOGIN occurs
f:SetScript("OnEvent",
	function(self)						-- The self parameter refers to the frame itself (f), though it's not used here
    	C_Timer.After(6, function()		-- Schedules a delayed function call using the WoW API C_Timer.After (delay in seconds)
    		FarmHud:Toggle()			-- Calls the Toggle() method on a global object (addon) FarmHud
    	end)
	end
)