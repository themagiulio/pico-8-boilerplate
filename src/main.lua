function _init()
  -- Initialize player
  player = Player.new(64, 64)
end

function _update()
  -- Update states
  player:update()
end

function _draw()
  -- Clear screen
  cls()

  -- Draw player
  player:draw()
end
