#!/usr/bin/perl
use warnings;

$flag = 0;
while($flag == 0)#проверка длины массива
{
	print"Enter array size:";
	$length = <STDIN>;
	chomp($length);
	if($length >= 10)
	{
		$flag = 1;
	}
	else
	{
		print"length must be 10 or more!!!\n";
	}
}
for(@array, $i = 0; $i < $length; $i++)#заполнение массива случайными числами
{
	$array[$i] = int(rand(50));
}
print "Array: ";
for($i = 0; $i < $length; $i++)
{
	print $array[$i], " ";
}
print"\nEnter element:";
$elem = <STDIN>;
chomp($elem);
$min = $max = $array[0];
$count1 = -1;
for(@coord, $count2 = 0, $count3 = 0, $i = 0; $i < $length; $i++)#поиск минимума, максимума и заданного элемента
{
	if($array[$i] == $elem)
	{
		$count1++;
		$coord[$count1] = $i;
	}
	if($array[$i] < $min)
	{
		$min = $array[$i];
		$count2 = $i;
	}
	if($array[$i] > $max)
	{
		$max = $array[$i];
		$count3 = $i;
	}
}
if($count1 < 0)#вывод результатов
{
       print "\nThere is no $elem in array!!!!\n"; 
}
else
{
       $count1++;
       print "\n There are $count1 $elem in array\nPositions:";
       for($i = 0; $i < $count1; $i++)
       {
              print $coord[$i], " "; 
       }
}
print "\n\nMin is $min on position $count2\nMax is $max on position $count3\n\n\n\n";