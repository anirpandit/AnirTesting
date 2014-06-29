#! usr/locla.bin/perl -w

$DNA1 = "atatcATTAAGCGCGATAagagtctagctagAGCCTAGTA";

$DNA2 = $DNA1;

$DNA2 =~ tr/ATGC/atgc/;

print $DNA2, "\n";

$DNA3 = $DNA1;

$DNA3 =~ tr/atgc/ATGC/;

print $DNA3, "\n";


print "\U$DNA1\n";

print "\L$DNA1\n";

$RNA1 = "auagcaauuagcgauaauagagaucucauauuccagacagauauagaaua";

$RNA1 =~ tr/u/t/;

$DNA4 = $RNA1;

print "\U$DNA4\n";



