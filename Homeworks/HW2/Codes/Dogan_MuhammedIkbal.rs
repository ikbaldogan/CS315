fn main() {
   let mut num = 0;
   while num < 100 {
   num = num +1;
    if num == 3 {
        continue;
    }
    if num == 7{
        break; // checking unconditional exit
    }
    println!("num:{}",num);
    }
    
    let mut no = 0;
    let mut no2 = 0;
    'outer: while no < 100{
        'inner: while no2 < 100 {
            no2 = no2 +1;
            if no2 == 11{
                break 'outer; // checking labeled jump
            }
        println!("no:{}",no2);
        }
        no = no +1;
    }
    println!("PROGRAM IS ENDED");
}