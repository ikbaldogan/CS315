void main() {

  Map<int,String> map = { 0:'murat'}; //1-initialize
  
  print(map[0]); // 2- get value for key
  map[1] = 'Ahmet';
  map[2] = 'Mehmet'; //3- adding new elements
  map[3] = 'Veli';
  print(map[1]);
  print (map);
  map.remove(1); //4-removing an element
  print (map);
  map[2] = ('Ayse'); // 5- modifying an element
  print (map);
  print(map.containsKey(1)); // 6- search for existence of a key
  print (map.containsValue('Ayse')); // 7- search existence of a value
  
  foo(map); // printing elements by function
}

void foo (Map<dynamic,dynamic> map){
  
  map.forEach((k,v) => print('${k}: ${v}'));
  
}