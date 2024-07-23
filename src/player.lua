Player = {}
Player.__index = Player

function Player.new(x, y)
  local self = setmetatable({}, Player)
  self.x = x
  self.y = y
  return self
end

function Player.update(self)
  -- Movement
  if btn(0) then
    self.x -= 1
  end

  if btn(1) then
    self.x += 1
  end

  if btn(2) then
    self.y -= 1
  end

  if btn(3) then
    self.y += 1
  end
end

function Player.draw(self)
  -- Draw a white pixel at player's position
  pset(self.x, self.y, get_color())
end
