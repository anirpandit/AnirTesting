#! usr/local/bin/perl

#use strict;
#use warnings;
 
my $proteinfilename = "/home/anir/git/AnirTesting/file.txt";

open(PROTEINFILE,$proteinfilename);

while (my $line =<PROTEINFILE>)
{
    chomp ($line);
    my($file,$ext) = split("\n", $line);
    push @array, ($file,$ext);
    $hash{$file} = $ext;
}

#print @array;

sort @array;

print @array;


$length = @array;
for($i = 0; $i < $length; $i++)
{
	
}

print $array[0];


#my %count;
#
#foreach my $key (sort keys %hash)
#{
#		my $value = $hash{$key};
#		
#       print "$key => $value\n";
#}
#
#foreach my $value(sort keys %count) {
#    print $value,"\t", $count{$value},"\n";
#}


#while (my($key, $value) = each(%hash))
#{
#    print "$key => @{$value}\n";
#}
exit;