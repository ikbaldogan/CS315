a = 10
b = 0
c = 0
while (c < 2)
do
::outerloop::
print("++++value of c:", c)
   while (b < 4)
        do
            print("----value of b:", b)
            while( a < 20 )
            do
                 a=a+1
                print("value of a:", a)
	            if( a == 15)
                 then
                    break -- checking uncondional jump
                end
                 if(a == 16)
                then
                 goto outerloop -- checking labeled jump
                end
            end
             b = b+1
            end
    c = c+1
end
print("program is ended")
