numbers = {"Ali" => "5", "Veli" => "10"} # 1- initialization
puts numbers["Ali"] # 2- Get the value for a given key
puts numbers
numbers["Ayse"] = 20 # 3- Add a new element
puts numbers
numbers.delete("Veli") # 4- Remove an element
puts numbers
numbers["Ayse"] = "300" # 5-Modify the value of an existing element
puts numbers
puts numbers.key?("Ali") # 6- Search for the existence of a key
puts numbers.has_value?("300") # 7- Search for the existence of a value
def foo(hsh)
    puts hsh
end
foo(numbers)