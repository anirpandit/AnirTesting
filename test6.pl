#!/usr/bin/perl

use strict;
use warnings;

##OPEN file for parsing##
open(FILE, '/home/anir/git/AnirTesting/file.txt');

my %hash;

##Parse each line of the file##
while(<FILE>){
        chomp;
        ##Split each line into Array##
		my @a = split("\t", $_);
		
		##Check if key exists, else assign empty array for values##
        if (! exists $hash{$a[0]}){
                $hash{$a[0]} = [];
        }
        ##Check if value exists, else add to array for hash key##
		if (! ($a[1] ~~ $hash{$a[0]})){
                push($hash{$a[0]}, $a[1]);
		}
}

close(FILE);

##Print out for each file name the number of extension types##
while( my ($key, $value) = each %hash){
my $item;
my $count=0;

        foreach $item (@$value){
        		$count++;
        }
        print "For $key, there are $count number of extension types\n";
}

exit;