#!usr/local/bin/perl -w

$DNA1= "ATTTAGCGCGATAGATATAGCTAGATAGCTAG";
$DNA2= "TAGATTAGATCGCGTAGGATAGCGTAGGATAG";

print "HERe are the two original fragments: \n\n";

print $DNA1, "\n";
print $DNA2, "\n\n";

$DNA3="$DNA1$DNA2";

print "Here is the concatenation of the two fragments version 1:\n\n";

print $DNA3, "\n\n"; 

$DNA4 = $DNA1.$DNA2;

print "Here is the concatenation of the two fragments version 2:\n\n";

print $DNA4, "\n\n"; 

