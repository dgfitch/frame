function class(superclass)
  local cls = {}
  cls.__super = superclass
  -- OK, this is mostly working, but how do we dynamically
  -- call something in the superclass if it doesn't exist in the class?
  cls.__index = superclass or cls
  if superclass and superclass.__tostring then
    cls.__tostring = superclass.__tostring
  end
  return setmetatable(cls, {__call = function (c, ...)
    instance = setmetatable({}, cls)
    -- call superclass init if it exists
    if cls.__super and cls.__super.__init then
      cls.__super.__init(instance, ...)
    end
    -- call this class's init if it exists
    if cls.__init then
      cls.__init(instance, ...)
    end
    return instance
  end})
end
