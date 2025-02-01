# Lua Function Unexpected Behavior

This repository demonstrates an unexpected behavior in a Lua function when called without arguments. The function `foo` is expected to return `nil` if the argument `a` is nil, but instead returns 1 when called without any arguments.  This showcases how implicit argument handling can lead to unexpected results. 

## Bug Description
The `foo` function is designed to handle a nil argument by returning nil. However, when called without an argument, Lua implicitly passes the value of the variable 'a' instead of passing nil.  Since this variable is not explicitly defined within the function's scope, it defaults to 0 (or the default value of the variable 'a' within the scope where this function is called). This unexpected behaviour can cause issues in larger programs where implicit argument handling is not well controlled. 

## Solution
The solution ensures that the function explicitly checks for the absence of arguments using `select('#', ...)` which returns the number of arguments passed. 