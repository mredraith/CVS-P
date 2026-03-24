-- Record/Replay Module by jay_ts
-- Lua definition

-- Custom training menu items
menu.t_valuename.recordstate = {
	{itemname = 'off',		displayname = motif.pause_menu.training_pause_menu.menu.valuename.recordstate_off},
	{itemname = 'record',	displayname = motif.pause_menu.training_pause_menu.menu.valuename.recordstate_rec},
	{itemname = 'replay',	displayname = motif.pause_menu.training_pause_menu.menu.valuename.recordstate_rep},
}

menu.t_valuename.recordslot = {
	{itemname = '1', displayname = '1'},
	{itemname = '2', displayname = '2'},
	{itemname = '3', displayname = '3'},
	{itemname = '4', displayname = '4'},
	{itemname = '5', displayname = '5'},
	{itemname = '6', displayname = '6'},
	{itemname = '7', displayname = '7'},
	{itemname = '8', displayname = '8'},
	{itemname = '9', displayname = '9'},
	{itemname = '10', displayname = '10'},
	{itemname = '11', displayname = '11'},
	{itemname = '12', displayname = '12'},
	{itemname = '13', displayname = '13'},
	{itemname = '14', displayname = '14'},
	{itemname = '15', displayname = '15'},
	{itemname = '16', displayname = '16'},
	{itemname = '17', displayname = '17'},
	{itemname = '18', displayname = '18'},
	{itemname = '19', displayname = '19'},
	{itemname = '20', displayname = '20'},
	{itemname = '21', displayname = '21'},
	{itemname = '22', displayname = '22'},
	{itemname = '23', displayname = '23'},
	{itemname = '24', displayname = '24'},
	{itemname = '25', displayname = '25'},
	{itemname = '26', displayname = '26'},
	{itemname = '27', displayname = '27'},
	{itemname = '28', displayname = '28'},
	{itemname = '29', displayname = '29'},
	{itemname = '30', displayname = '30'},
	{itemname = '31', displayname = '31'},
	{itemname = '32', displayname = '32'},
	{itemname = '33', displayname = '33'},
	{itemname = '34', displayname = '34'},
	{itemname = '35', displayname = '35'},
	{itemname = '36', displayname = '36'},
	{itemname = '37', displayname = '37'},
	{itemname = '38', displayname = '38'},
	{itemname = '39', displayname = '39'},
	{itemname = '40', displayname = '40'},
	{itemname = '41', displayname = '41'},
	{itemname = '42', displayname = '42'},
	{itemname = '43', displayname = '43'},
	{itemname = '44', displayname = '44'},
	{itemname = '45', displayname = '45'},
	{itemname = '46', displayname = '46'},
	{itemname = '47', displayname = '47'},
	{itemname = '48', displayname = '48'},
	{itemname = '49', displayname = '49'},
	{itemname = '50', displayname = '50'},
}

-- Change items
local function slotValueChanged(t, sec)
	local maxSlots = 1
	if player(1) then maxSlots = map("jayrecordreplay_slots") end
	local valueitem = menu[t.itemname] or 1
	local chk = valueitem
	if getInput(-1, sec.menu.add.key) then
		valueitem = valueitem + 1
	elseif getInput(-1, sec.menu.subtract.key) then
		valueitem = valueitem - 1
	end
	if valueitem > maxSlots then
		valueitem = 1
	elseif valueitem < 1 then
		valueitem = maxSlots
	end
	-- true upon option change
	if chk ~= valueitem then
		sndPlay(motif.Snd, sec.cursor.move.snd[1], sec.cursor.move.snd[2])
		t.vardisplay = menu.t_valuename[t.itemname][valueitem].displayname
		menu[t.itemname] = valueitem
		menu.itemname = t.itemname
		return true, menu.t_valuename[t.itemname][valueitem].itemname
	end
	return false, nil
end

menu.t_itemname['recordstate'] =
function(t, item, cursorPosY, moveTxt, sec)
	if menu.f_valueChanged(t.items[item], sec) then
		player(1)
		mapSet('jayrecordreplay_recSt', menu.recordstate - 1)
		mapSet('jayrecordreplay_recCd', 3)
	end
	return true
end

menu.t_itemname['recordslot'] =
function(t, item, cursorPosY, moveTxt, sec)
	if slotValueChanged(t.items[item], sec) then
		player(1)
		mapSet('jayrecordreplay_recSl', menu.recordslot)
		mapSet('jayrecordreplay_recCd', 3)
	end
	return true
end

menu.t_vardisplay.recordstate =
function()
	return menu.t_valuename.recordstate[menu.recordstate or 1].displayname
end

menu.t_vardisplay.recordslot =
function()
	return menu.t_valuename.recordslot[menu.recordslot or 1].displayname
end