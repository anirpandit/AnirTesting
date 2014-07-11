#! usr/local/bin/perl

use strict;
use warnings;
 
my @names = ('Tom', 'Dick', 'Harry', 'Harry', 'Tom', 'Mark','Harry'); 
 
my %dupecount;

##Count number of instances of names in array## 
foreach my $name (@names) {
    $dupecount{$name}++;
}

##Create hash containing unique names##
my %nameshash = map { $_ => 0 } @names;

##Array after removing duplicates##
my @remdupes = keys %nameshash;

@remdupes = join(',',@remdupes);

##Print the unique names##
print "These are the unique names : @remdupes";

##Print the removed duplicate names##
print "\nThe following were duplicated:\n";
  
 
foreach my $dupe(sort keys %dupecount) {
	##Check if occurence more than once i.e. duplicated##	
	if($dupecount{$dupe} > 1){
		##Print duplicate names and number of occurences##
		print $dupe,"\t", $dupecount{$dupe}." times.","\n";
	}
    
}

exit;