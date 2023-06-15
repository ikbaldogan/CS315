mydict = { 
  "Ali": "Student", "Mehmet": "Teacher",
} # 1-initialization 
print (mydict)
print (mydict.get("Ali")) # 2 - get value for a key
mydict.update({"Ayse" : "Employee"}) # 3 - adding a new value
print (mydict)
mydict.pop("Ali") # 4- Removing element
print (mydict)
mydict.update({"Mehmet" : "Student"}) #5-modifying an element
print (mydict)
if "Mehmet" in mydict: # 6- searching for a key
    print("Mehmet exists")
if "Student" in mydict.values(): # 7- searching for a value
    print("Student exists")
def foo (mlist): # 8- function that prints key value pair
    for x, y in mlist.items():
        print(x, y)
foo(mydict)