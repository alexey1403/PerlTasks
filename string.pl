#!/usr/bin/perl
use warnings;

$flag = 0;
while($flag == 0)#ввод строки
{
	print"Enter string:";
	$str = <STDIN>;
	chomp($str);
	$l = length $str;
	if($l >= 10)
	{
		$flag = 1;
	}
	else
	{
		print"length must be 10 or more!!!\n";
	}
}
print "Reversed string:";
$str1 = reverse($str);#переворот строки
print $str1 , "\n\n";
$flag = 0;
while($flag == 0)#ввод подстроки для поиска
{
	print"Enter substring:";
	$substr = <STDIN>;
	chomp($substr);
	$l1 = length $substr;
	if($l1 <= $l)
	{
		$flag = 1;
	}
	else
	{
		print"substring can't be longer than string!!!\n";
	}
}
$pos = index $str, $substr;#поиск позиции подстроки в исходной строке
if($pos == -1)
{
	print "there is no $substr in $str!!!\n\n";
}
else
{
	print "'$substr' on $pos position in '$str'\n\n";
}
$flag = 0;
while($flag == 0)
{
	print"Enter position:";
	$pos = <STDIN>;
	chomp($pos);
	print"Enter length:";
	$l1 = <STDIN>;
	chomp($l1);
	if($pos + $l1  <= $l)
	{
		$flag = 1;
	}
	else
	{
		print"substring can't be longer than string!!!\n";
	}
}
$sub = substr $str, $pos, $l1;#поиск фрагмента строки
print $sub, "\n\n";