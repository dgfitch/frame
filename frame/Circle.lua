require 'Shape'

Circle = class(Shape)

function Circle:__init(opts)
  Shape:__init(self, opts)
  self.r = opts.r or 1
  self.x = opts.x or 0
  self.y = opts.y or 0
end


