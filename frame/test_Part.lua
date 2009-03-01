require 'Part'
require 'lunity'
module( 'TEST_PART', lunity )

function test_Initializes_Defaults()
  local p = Part()
  assertEqual( p.x, 0 )
  assertEqual( p.kind, Part.GENERIC )
end

function test_Initialize_Can_Override()
  local p = Part{x = 1}
  assertEqual( p.x, 1 )
end

function test_Allows_Subparts()
  local p = Part()
  assertEqual( #p.parts, 0 )
  local sub = Part()
  p:add(sub)
  assertEqual( #p.parts, 1 )
  assertEqual( p.parts[1].parent, p )
end

function test_Allows_Different_Subparts()
  local p1 = Part()
  assertEqual( #p1.parts, 0 )
  local sub = Part()
  p1:add(sub)
  local p2 = Part()
  assertEqual( #p2.parts, 0 )
  assertEqual( #p1.parts, 1 )
end

function test_Has_Update()
  local p = Part()
  assertInvokable(p.update)
end

function test_Has_Draw()
  local p = Part()
  assertInvokable(p.draw)
  p:draw()
end

function test_Draw_Calls_Subparts()
  local p = Part()
  local sub = Part()
  assertDoesNotError(function() p:draw() end)
  p:add(sub)
  assertDoesNotError(function() p:draw() end)
  sub.draw = function() error("YAY") end
  assertErrors(function() p:draw() end)
end

function test_Tostring()
  local p = Part{name = "hooray",x=2,y=4}
  assertEqual( tostring(p), "Part:hooray#0@2,4" )
end

runTests { useANSI = false }
