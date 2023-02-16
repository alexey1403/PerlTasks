#!/usr/bin/perl
use warnings;

@country = ('Poland' , 'USA' , 'Russia' , 'Uzbekistan' , 'Belarus' , 'China' , 'Japan');
@date = ('14.03.1996' , '17.12.2012' , '01.01.2000' , '11.02.2022' , '27.05.1999' , '11.11.2011' , '09.11.2001' , '09.05.1945' , '31.12.2022' , '01.01.2023');
@type = ('oil' , 'gas' , 'plane' , 'truck' , 'train' , 'metal' , 'apple' , 'information' , 'technology' , 'robot' , 'weapons');
$flag = 0;
while($flag == 0)
{
	print "Enter size:";
	$size = <STDIN>;
	chomp($size);
	if($size >= 10)
	{
		$flag = 1;
	}
	else
	{
		print "hash size must be 10 or more!!!\n";
	}
}
for(%list , $i = 0; $i < $size; $i++)#заполнение хэша
{
	$list[$i]{'Country'} = "$country[(int(rand(6)))]";
	$list[$i]{'date'} = "$date[int(rand(9))]";
	$list[$i]{'type'} = "$type[int(rand(10))]";
	$a = int(rand(20));
	$list[$i]{'count'} = "$a";
	$a = int(rand(200000));
	$list[$i]{'price'} = "$a";
};
$flag = 0;
while($flag == 0)
{
	$ch = 0;
	print"Choose search parameter:\n1.Country\n2.Date\n3.Type\n";
	$ch = <STDIN>;
	chomp($ch);
	if($ch == 1)
	{
		$f = 0;
	        while($f == 0)
	        {
		print"Enter:";
	        $param = <STDIN>;
	        chomp($param);
	        $ff = 0;
	        $i = 0;
	        do
	        {
	        	if($param eq $country[$i])
	        	{
	        		$ff = 1;
	        	}
	        	$i++;
	        }
	        while($ff == 0 || $i < 7);
	        if($ff == 1)
	        {
	        	$f = 1;
	        }
	        else
	        {
	        	print"There is no $param in checked list!!!\n"; 
	        }
	        }
		$flag = 1;
	}
	elsif($ch == 2)
	{
		$f = 0;
	        while($f == 0)
	        {
		print"Enter:";
	        $param = <STDIN>;
	        chomp($param);
	        $ff = 0;
	        $i = 0;
	        do
	        {
	        	if($param eq $date[$i])
	        	{
	        		$ff = 1;
	        	}
	        	$i++;
	        }
	        while($ff == 0 || $i < 10);
	        if($ff == 1)
	        {
	        	$f = 1;
	        }
	        else
	        {
	        	print"There is no $param in checked list!!!\n"; 
	        }
	        }
		$flag = 1;
	}
	elsif($ch == 3)
	{
		$f = 0;
	        while($f == 0)
	        {
		print"Enter:";
	        $param = <STDIN>;
	        chomp($param);
	        $ff = 0;
	        $i = 0;
	        do
	        {
	        	if($param eq $type[$i])
	        	{
	        		$ff = 1;
	        	}
	        	$i++;
	        }
	        while($ff == 0 || $i < 11);
	        if($ff == 1)
	        {
	        	$f = 1;
	        }
	        else
	        {
	        	print"There is no $param in checked list!!!\n"; 
	        }
	        }
		$flag = 1;
	}
	else
	{
		$flag = 0;
	}
};
print "$param\n$ch\n";
for($i = 1; $i <= $size; $i++)
{
	if($ch == 1)#вывод по параметру страна
	{
		if($list[$i]{'Country'} eq $param)
                {
			print "$list[$i]{'date'}:$list[$i]{'type'}:$list[$i]{'count'}:$list[$i]{'price'}\n";	
		}
	}
	if($ch == 2)#вывод по дате
	{
		if($list[$i]{'date'} eq $param)
		{
			print "$list[$i]{'Country'}:$list[$i]{'type'}:$list[$i]{'count'}:$list[$i]{'price'}\n";
		}
	}
	if($ch == 3)#вывод по типу
	{
		if($list[$i]{'type'} eq $param)
		{
			print "$list[$i]{'Country'}:$list[$i]{'date'}:$list[$i]{'count'}:$list[$i]{'price'}\n";
		}
	}
}
