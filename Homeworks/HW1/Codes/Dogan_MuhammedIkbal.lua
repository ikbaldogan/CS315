local cars = {["bmw"] = 1, ["audi"] = 10,["mercedes"] = 77} -- 1initialization
print(cars["bmw"]) -- 2get value for a key
print(cars["vw"])
cars["vw"] = 3 -- 3add new element
print(cars["vw"])
cars["vw"] = nil -- 4deleting an element
print(cars["vw"])
print(cars["bmw"])
cars["bmw"] = 999 -- 5modifying an existing element
print(cars["bmw"])
print(cars["bmw"] == nil) --6 check existence of a key
for k,v in pairs(cars) do --7 checks existence of a value
  if v == 999 then
    print("exists")
    break
  end
end
function foo(map) --8 print all key value pairs
  for i, v in pairs( cars ) do
  print( i, v )
  end
end
foo(cars)