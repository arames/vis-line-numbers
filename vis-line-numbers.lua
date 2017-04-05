require('vis')

local module = {}

vis.events.subscribe(vis.events.MODE_CHANGE, function()
	if (vis.mode == vis.modes.INSERT) then
		vis:command('set numbers')
	else
		vis:command('set relativenumbers')
	end
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	vis:command('set numbers', win)
end)

vis.events.subscribe(vis.events.WIN_LEAVE, function(win)
	vis:command('set numbers')
end)

vis.events.subscribe(vis.events.WIN_ENTER, function(win)
	vis:command('set relativenumbers')
end)

return module
