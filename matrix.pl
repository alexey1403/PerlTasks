#!/usr/bin/perl
use warnings;

print "\nEnter matrix size1:";
$size1 = <STDIN>;
chomp($size1);
print "\nEnter matrix size2:";
$size2 = <STDIN>;
chomp($size2);
for(@arr, $i = 0, $count1 = 1; $i < $size1; $i++, $count1++)#ввод матрицы
{
       for($j = 0, $count2 = 1; $j < $size2; $j++, $count2++)
       {
              print "\nEnter arr[$count1,$count2]:";
              $arr[$i][$j] = <STDIN>;
              chomp($arr[$i][$j]);             
       }
}
print "\n\nMatrix:";
for($i = 0; $i < $size1; $i++)
{
       print "\n"; 
       for($j = 0; $j < $size2; $j++)
       {
             print "$arr[$i][$j] "; 
       }      
}
print "\n\n\n\n"; 
print "\n\nMatrix, increased by 7:";
for($i = 0; $i < $size1; $i++)#умножение элементов матрицы на 7
{
       print "\n"; 
       for($j = 0; $j < $size2; $j++)
       { 
             print 7 * $arr[$i][$j] , " "; 
       }      
}
print "\n\n\n\n"; 

print "\nEnter matrix size1:";
$size1 = <STDIN>;
chomp($size1);
print "\nEnter matrix size2:";
$size2 = <STDIN>;
chomp($size2);
for(@arr, $i = 0; $i < $size1; $i++)#заполнение матрицы случайными числами
{
       for($j = 0; $j < $size2; $j++)
       {
              $arr[$i][$j] = int(rand(100));            
       }
}
$min = $arr[0][0];
@coord = (0 , 0);
for($i = 0; $i < $size1; $i++)#поиск минимального элемента матрицы
{
       for($j = 0; $j < $size2; $j++)
       {
              if($min > $arr[$i][$j])
              {
                     $min = $arr[$i][$j];
                     @coord = ($i , $j);
              }            
       }
}
for($i = 0; $i < $size1; $i++)
{
       print "\n"; 
       for($j = 0; $j < $size2; $j++)
       { 
             print $arr[$i][$j] , " "; 
       }      
}
print "\n\n\n\n"; 
print "\nMin element is $min \nposition is $coord[0]  $coord[1]\n\n\n\n\n";
print "Enter element:";
$elem = <STDIN>;
chomp($elem);
$ii = -1;
for(@coord1, $i = 0; $i < $size1; $i++)#поиск заданного элемента матрицы
{
       for($j = 0,; $j < $size2; $j++)
       {
              if($elem == $arr[$i][$j])
              {
                     $ii++;
                     $coord1[0][$ii] = $i;
                     $coord1[1][$ii] = $j;
              }            
       }
}
if($ii < 0)
{
       print "\nThere is no $elem in matrix!!!!\n"; 
}
else
{
       $ii++;
       print "\n There are $ii $elem in matrix\nPositions:\n";
       for($i = 0; $i < $ii; $i++)
       {
              print "$coord1[0][$i] $coord1[1][$i]\n"; 
       }
}
print"\n\n";
