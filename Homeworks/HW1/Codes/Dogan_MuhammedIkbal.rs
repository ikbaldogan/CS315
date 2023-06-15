use std::collections::HashMap;
fn main() {
 
let mut numbers=HashMap::new(); //1- Initialize
   
println!("{:?}",numbers.get(&"Ali")); // 2- Getvalue for key
numbers.insert("Ali","100");// 3- Add a new element
println!("{:?}",numbers.get(&"Ali"));
numbers.insert("Veli","200");
numbers.insert("Ayse","99");
println!("{:?}",numbers );
numbers.remove( &"Veli");// 4- Remove an element
println!("{:?}",numbers );
numbers.insert("Ayse","500"); //5-Modify the value
println!("{:?}",numbers );
if numbers.contains_key( & "Ayse")//6-existence of a key
  {
  println!("it contains Ayse");
  }
  for (_key, val) in numbers.iter() {//7-exts. of a value
    if val.eq(&"100"){
      println!("it contains 100");
    }
 }
fn foo(h: &mut HashMap<&str, &str>) {
    for (key, val) in h.iter() {
    println!("{} {}", key, val);
 }
}
  foo(&mut numbers);
}