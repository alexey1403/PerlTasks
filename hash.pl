#!/usr/bin/perl
use warnings;

@country = ('Poland' , 'USA' , 'Russia' , 'Uzbekistan' , 'Belarus' , 'China' , 'Japan');
@date = ('14.03.1996' , '17.12.2012' , '01.01.2000' , '11.02.2022' , '27.05.1999' , '11.11.2011' , '09.11.2001' , '09.05.1945' , '31.12.2022' , '01.01.2023');
@type = ('oil' , 'gas' , 'plane' , 'truck' , 'train' , 'metal' , 'apple' , 'information' , 'technology' , 'robot' , 'weapons');
%list = ();
for($i = 1; $i < 21; $i++)
{
         @mean = ($country[int(rand(6))] , $date[int(rand(9))] , $type[int(rand(10))] , int(rand(20)) , int(rand(1000)));
         $list{"$i"} = "@mean";#присваивание значений 
}
print "\nEnter Country:";
$count = <STDIN>;
chomp($count);
while(($key,$value) = each %list)#перебор списка для вывода значения
{
         $pos = index $value , $count;
	if($pos == 0)
	{
	         print "$key:$value\n";
	}
}