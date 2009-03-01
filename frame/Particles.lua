require 'Part'

Particles = class(Part)

function Particles:__init(opts)
  Part:__init(self, opts)
  self.kind = Part.PARTICLES
end

