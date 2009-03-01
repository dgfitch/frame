require 'Body'
require 'Shape'
require 'lunity'
module( 'TEST_BODY', lunity )

function test_Initializes_Defaults()
  local x = Body()
  assertEqual( #x.parts, 0 )
  assertEqual( x.kind, Part.BODY )
end

function test_Allows_Multiple_Instances()
  local x1 = Body()
  local x2 = Body()

  x2:add(x1)
  
  assertEqual( #x1.parts, 0 )
  assertEqual( #x2.parts, 1 )
end

function test_Tostring()
  local x1 = Body{name = "1"}
  local x2 = Body{name = "2"}

  x2:add(x1)
  
  assertEqual( tostring(x1), "Body:1#0@0,0" )
  assertEqual( tostring(x2), "Body:2#1@0,0" )
end

function test_Can_Draw()
  local x = Body()
  assertDoesNotError(function() x:draw() end)
end

function test_Can_AddShape()
  local x = Body()
  local s = Shape()
  assertDoesNotError(function() x:add_circle(s) end)
end

runTests { useANSI = false }
