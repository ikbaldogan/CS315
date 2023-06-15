<?php
   $x = 1 ;
   while($x)
   {
        for($j =10 ; ;$j ++)
        {
            if($j == 11)
            {
               continue;
            }
            if($j == 15)
            {
                break 2; # checking unconditional exit, exits from 2 nested loop
            }
            echo $j;
            echo "\n";
        }
      $x ++ ;
   }
   while($x)
   {
        echo $x;
        echo "\n";
        if($x == 5){
            goto end; # checking labeled jump
        }
        $x++;
   }
   end:
        echo "program is ended"
?>