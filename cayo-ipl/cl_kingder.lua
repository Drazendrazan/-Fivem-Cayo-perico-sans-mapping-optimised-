Citizen.CreateThread(function()
    while true do
		local sleepcayo = 1000
        local pCoords = GetEntityCoords(PlayerPedId())        
            local distance1 = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, 4840.571, -5174.425, 2.0, false)
		if distance1 < 2000.0 then
			sleepcayo = 0;
			Citizen.InvokeNative("0x9A9D1BA639675CF1", "HeistIsland", true)
			Citizen.InvokeNative("0x5E1460624D194A38", true) 
		else
			Citizen.InvokeNative("0x9A9D1BA639675CF1", "HeistIsland", false)
			Citizen.InvokeNative("0x5E1460624D194A38", false)
		end
		Wait(sleepcayo)
    end
end)

--