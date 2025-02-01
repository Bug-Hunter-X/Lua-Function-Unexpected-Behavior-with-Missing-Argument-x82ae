local function foo(a)
  if a == nil then return nil end
  return a + 1
end

local b = foo(nil)
print(b)  -- Output: nil

local c = foo(10)
print(c)  -- Output: 11

-- Unexpected behavior starts here
local d = foo()
print(d) -- Output: 1, instead of nil or error