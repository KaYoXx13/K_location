GM = nil
TriggerEvent('GM:GameMode', function(obj) GM = obj end)


RegisterServerEvent('tuto:tuto')
AddEventHandler('tuto:tuto', function()
	local _source = source 
	local xPlayer = GM.GetPlayerFromId(_source)
	local money = xPlayer.getMoney()
	local price = 500
	if money >= price then 
		xPlayer.removeMoney(price)
		local _source = source
		TriggerClientEvent('GM:showAdvancedNotification', _source, '~b~Information', nil, "~p~La location va être livré, patientez svp !", "CHAR_CHAT_CALL", 1)
		TriggerClientEvent("kayoxx:carspawn", source)
	else
		TriggerClientEvent('GM:showNotification', _source, "Vous n'avez pas assez d'argent sur vous ! Allez retirer")
	end
end)

RegisterServerEvent('kayoxx:zion')
AddEventHandler('kayoxx:zion', function()
	local _source = source 
	local xPlayer = GM.GetPlayerFromId(_source)
	local money = xPlayer.getMoney()
	local price = 500
	if money >= price then 
		xPlayer.removeMoney(price)
		local _source = source
		TriggerClientEvent('GM:showAdvancedNotification', _source, '~b~Information', nil, "~p~La location a bien été livré, patientez svp !", "CHAR_CHAT_CALL", 1)
		TriggerClientEvent("kayoxx:carspawnzion", source)
	else
		TriggerClientEvent('GM:showNotification', _source, "Vous n'avez pas assez d'argent sur vous ! Allez retirer")
	end
end)

RegisterServerEvent('kayoxx:imp')
AddEventHandler('kayoxx:imp', function()
	local _source = source 
	local xPlayer = GM.GetPlayerFromId(_source)
	local money = xPlayer.getMoney()
	local price = 500
	if money >= price then 
		xPlayer.removeMoney(price)
		local _source = source
		TriggerClientEvent('GM:showAdvancedNotification', _source, '~b~Information', nil, "~p~La location a bien été livré, patientez svp !", "CHAR_CHAT_CALL", 1)
		TriggerClientEvent("kayoxx:impaler", source)
	else
		TriggerClientEvent('GM:showNotification', _source, "Vous n'avez pas assez d'argent sur vous ! Allez retirer")
	end
end)



