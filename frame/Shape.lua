require 'Part'

Shape = class(Part)

function Shape:__init(opts)
  Part:__init(self, opts)
  self.kind = Part.SHAPE
end

