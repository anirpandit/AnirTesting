#! usr/local/bin/perl -w

use warnings;
use strict;

my $count;
my $input;
my $number;
my $sentence;
my $story;

my @nouns = ('Dad','TV','Mom','Rebecca','Groucho','Harpo','Robin Hood','Joe and Moe');

my @verbs= ('ran to','giggle with','put hot sauce on','exploded','dissolved','sang stupid songs','ran away','jumped with');

my @prepositions = ('at the store', 'over teh rainbow', 'just for the fun of it', 'at the beach', 'around the world');

srand(time|$$);

do {
	$story = '';
	
	for($count = 0; $count < 6; $count++){
		$sentence = $nouns[int(rand(scalar @nouns))]
					." "
					.$verbs[int(rand(scalar @verbs))]
					." " 
					.$prepositions[int(rand(scalar @prepositions))]
					. '. ';
		$story .= $sentence;
	}
	
	print "\n", $story. "\n";
	
	print "\nType \"quit\" to quit, or press Enter to continue: ";
	
	$input = <STDIN>;
	
}until($input =~ /^s*q/i);

exit;