# FRÅME

a simple OO structure for LÖVE games

------

1. Unit tests use lunity. Just run the test_*.lua files with a recent lua.
2. Using the framework is not actually possible yet, because the superclass inheritance is not correct.

## The General Idea

1. Make LÖVE more testable.
    - Game logic should be unit tested.
    - In the future, it would be nice to extend lunity to output directly to the LÖVE window.
2. Encapsulate drawing, updating, and collisions between Box2D, ParticleSystem, and other objects.
    - You should be able to add a part to a game object, and have it draw automatically.
    - Collisions should be message based: "Hey, object A! Object B just ran into you; oh, and hey, object B... object A says hello."


Just in case anyone finds this useful, it is MIT licensed.

Copyright (c) 2009 Dan Fitch

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

