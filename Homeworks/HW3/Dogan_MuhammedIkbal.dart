void main() {
  
  String model1 = "mercedes 4";
  int year= 2020;
  int price = 10000;
  
  //1-Nested subprogram definitions
  
  double tax = calculateTax(price,year);//NESTED SUBPROGRAM 1
  
  double totalPrice = price + tax ;
  
  String outputMsg = '$model1\'s price is $totalPrice\$ ';
  print (outputMsg);
  
  String shop = 'Ikbal Shop';
  String phoneNo = '05006565.';
  String output = nestedSubprograms(outputMsg,shop,phoneNo);//NESTED SUBPROGRAM 2
  print (output);
  
  //2-Scope of local variables
  
   String model2 = ' BMW M4'; // model2 MAIN SCOPE
   int year2 = 2022;        // year2 MAIN SCOPE
   void printModelOuter(){
    String model2 = 'AUDI A4'; //model2 OUTER SCOPE 
     int price2 = 5000;     // price2 OUTER SCOPE
     String no2 = '#10';    // no2 OUTER SCOPE
     void printModelInner(){
      String no2 = '#30'; // no2 INNER SCOPE
      print("Second Model is $model2 " " $year2 " + " $no2 " +"  $price2\$");
   }
     printModelInner();
   }
   printModelOuter();
  print("Second Model is $model2 " " $year2 " ); //LOCAL VARIABLE MAIN SCOPE
  
  
  //3-Parameter passing methods
    int noI = 7; // MAIN SCOPE LOCAL VARIABLE
     paramaterPass("ikbal",noI); 
  
 //4- Keyword and default parameters
  
  keywordDefault("Ahmet",parameter2:777); // NAMED PARAMETER2 CALLING
  
  keywordDefault("Mehmet"); // IF THE PARAMETER2 IS NOT ENTERED, DEFAULT VARIABLE WILL BE SHOWN
  
  
  //5-Closures
  
     var out1= (String name,int no) { // 1st Closure is Created
    
       print('First Closure $name'+ "$no"); // 1st Closure function
      };
  
  
  (String name)  { // 2nd Closure is Created and called directly
    print('Second Closure $name'); //2snd closure function
  }(' LION '); // SECOND CLOSURE IS CALLED
  
  out1(' PANDA ',7); // FIRST CLOSURE IS CALLED
  
}//END OF MAIN


  
  void keywordDefault(String parameter1, {int parameter2 = 300}) 
  {
    print(parameter1 +" $parameter2");
    
  }


  paramaterPass(String s1,int n1) { 
    n1++;
   print(s1 + " has the number $n1" ); 
  
}

//NESTED SUBPROGRAM DEFINITION 1
double calculateTax(int aPrice, int aYear){   // Outer Program
  
  double priceCalculator(int aPrice, int aYear) {  // inner/nested subprogram
    return aPrice + aYear * (0.15);
  }
  double fixedTax = 15;
  return fixedTax + priceCalculator(aPrice,aYear);
  
}

//NESTED SUBPROGRAM DEFINITION 2
String nestedSubprograms(String m1,m2,m3){ //3 nested subprograms returns an message output
  
  String nested1(String message1){
   String nested2(String message2){
     String nested3(String message3){
        return message1 + message2 + ' wishes you best, phoneNo: ' + message3 +'\n';
      }
      return nested3(m3); // message3
    }
    return nested2(m2);     //message2
  }
  return nested1(m1);          // message1
}