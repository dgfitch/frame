require 'Class'
require 'table'

Part = class()

Part.GENERIC = -1
Part.GAME = 0
Part.BODY = 1
Part.SHAPE = 2
Part.PARTICLES = 3

function Part:__init(opts)
  local opts = opts or {}
  self.kind = Part.GENERIC
  self.name = opts.name
  self.x = opts.x or 0
  self.y = opts.y or 0
  self.h = opts.h or 0
  self.w = opts.w or 0
  self.alive = true
  self.parent = nil
  self.parts = {}
end

function Part:kind_name()
  if self.kind == Part.GENERIC then return "Part" end
  if self.kind == Part.GAME    then return "Game" end
  if self.kind == Part.BODY    then return "Body" end
  if self.kind == Part.SHAPE   then return "Shape" end
  if self.kind == Part.PARTICLES then return "Particles" end
end

function Part.__tostring(x)
  return x:kind_name() .. ":" .. (x.name or "unnamed") ..
    "#" .. #x.parts .. "@" .. x.x .. "," .. x.y
end

function Part:add(n)
  n.parent = self
  table.insert(self.parts, n)
end

function Part:draw()
  for k,v in pairs(self.parts) do
    v:draw()
  end
end

function Part:update(dt)
end

function Part:collide_with(x)
end


