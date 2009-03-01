require 'Part'

Body = class(Part)

function Body:__init(opts)
  Part:__init(self, opts)
  self.kind = Part.BODY
end

function Body:add_shape(n)
  self:add(n)
  if love then
    n.s = love.physics.newCircleShape(self, n.r)
  end
end

function Body:set_mass(x)
  if x then
    self.b:setMass(x)
  else
    self.b:setMassFromShapes()
  end
end
