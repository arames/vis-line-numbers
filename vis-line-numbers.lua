require('vis')

local module = {}

vis.events.subscribe(vis.events.MODE_CHANGE, function()
  if (vis.mode == vis.modes.INSERT) then
    vis:command('set numbers')
  else
    vis:command('set relativenumbers')
  end
end)

vis.events.subscribe(vis.events.WIN_FOCUS, function(focused_win)
  for win in vis:windows() do
    if win ~= focused_win then
      vis:command('set numbers', win)
    end
  end
  vis:command('set relativenumbers', focused_win)
end)

return module
