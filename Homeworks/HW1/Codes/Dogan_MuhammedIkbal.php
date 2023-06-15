<?php
$numbers = array("Ahmet"=>"35", "Mehmet"=>"37", "Ali"=>"43");// 1 - initialize
echo $numbers["Ahmet"]; // 2 get a value for given key
echo "<br>";
print_r($numbers);
echo "<br>";
$numbers += ["Ayse" => "15"]; // 3- adding an element
print_r($numbers);
unset($numbers["Mehmet"]); // 4 - removing an element
echo "<br>";
print_r($numbers);
echo "<br>";
$numbers["Ali"] = "18"; // 5- modifying a value
print_r($numbers);
echo "<br>";
if (array_key_exists("Ali",$numbers)) // 6- checking existence of key
  {
  echo "Key exists!";
  }
else
  {
  echo "Key does not exist!";
  }
echo "<br>";
if (in_array("18",$numbers)) // 7- checking existence of value
  {
  echo "18 exists!";
  }
else
  {
  echo "18 not exist!<br>";
  }
function foo($mymap)// 8- printing key value pairs
{
	foreach($mymap as $key => $value)
	{
  		echo $key." has the value ". $value . "<br>";
	}

}
foo($numbers);
?>

