#! usr/local/bin/perl

use strict;
use warnings;
 
my $sequence = "GATAGAGAGGAGATTAATATCCG";
 
my @seqsplit = split(//,$sequence); 
 
my %count;
 
foreach my $base (@seqsplit) {
    $count{$base}++;
}
 
foreach my $base(sort keys %count) {
    print $base,"\t", $count{$base},"\n";
}


exit;