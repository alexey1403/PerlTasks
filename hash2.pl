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
for(%list , $i = 1; $i <= $size; $i++)#заполнение хэша
{
	@mean = ($date[int(rand(9))] , $type[int(rand(10))] , int(rand(20)) , int(rand(1000)));
	$j = $country[(int(rand(6)))];
	$list{"$i:$j"} = "@mean";
};
print "@{[%list]}\n";
print "\nEnter Country:";
$count = <STDIN>;
chomp($count);
while(($key,$value) = each %list)#перебор списка для вывода значения
{
	for($i = 1; $i <= $size; $i++)
	{
		if(exists $list{"$i:$count"})
		{
			if($list{$key} eq $list{"$i:$count"})
			{
				print "$key => $value\n";
			}	
		}
	}
}

