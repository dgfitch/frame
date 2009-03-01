package.path = package.path .. ";../frame/?.lua"
require 'Game'
require 'Circle'

function load()
  local f = love.graphics.newFont(love.default_font, 12) 
  love.graphics.setFont(f) 
  love.graphics.setLineWidth(2)

  game = Game{h=800, w=600}
  game.world:setGravity(0, 80)
  
  -- TODO: I need to be able to call game:add_body, but it ain't right yet
  local test = game:add_body{
    x=400,
    y=300,
    shapes={ Circle{r=20} }
  }
  test:set_mass()
end

function keypressed(key)
  if key == love.key_escape then
    love.system.exit()
  end

  if key == love.key_r then
    love.system.restart()
  end
end

function update(dt)
  game:update(dt)
end

function draw()
  game:draw()
end

