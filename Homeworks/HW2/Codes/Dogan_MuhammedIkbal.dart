void main() {
  var x = 0;
  var y = 0;
  
 label1:
  while(y < 10){
    
    
     label2:
        while (x <10) {

            if (x == 5) {
              break label1; //checking labeled jump and unconditional jump together
            }

           if (x == 3) {
              x = x + 1;
              continue;
            }
           print('x = $x' + ' y = $y');
           x = x + 1;
        }
    y = y  + 1;
    
   } 

  print('END');

}
