require 'Part'

Game = class(Part)

function Game:__init(opts)
  Part:__init(self, opts)
  self.kind = Part.GAME
  if love then
    self.world = love.physics.newWorld(2000, 2000)
  end
end

function Game:add_body(opts)
  local opts = opts or {x=self.w / 2, y=self.h / 2}
  error("HI")
  local b = Body(opts)
  if love and self.world then
    b.b = love.physics.newBody(self.world, opts.x, opts.y)
    for k,v in pairs(opts.shapes) do
      self:add_circle(v)
    end
  end
  return body
end

function Game:update(dt)
  self.world:update(dt)
end
