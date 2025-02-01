local function foo(...)
  local numArgs = select('#', ...)
  if numArgs == 0 then
    return nil -- Explicitly handle the case with no arguments
  elseif select(1, ...) == nil then
    return nil -- Handle nil argument
  else
    return select(1, ...) + 1
  end
end

local b = foo(nil)
print(b)  -- Output: nil

local c = foo(10)
print(c)  -- Output: 11

local d = foo()
print(d)  -- Output: nil

local e = foo(5,6,7) --testing multiple arguments 
print(e) -- Output:6 